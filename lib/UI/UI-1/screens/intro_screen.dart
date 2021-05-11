import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/app_data.dart';
import 'package:flutter_ui/UI/UI-1/screens/register_screen.dart';
import 'package:flutter_ui/widgets/my_cached_network_image.dart';

class IntroScreen extends StatefulWidget {
  static const id = 'intro_screen';

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  static const _switchDuration = Duration(milliseconds: 250);
  static const _intros = AppData.introScreens;

  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView.builder(
        onPageChanged: (page) => setState(() => _currentPage = page),
        controller: _controller,
        itemBuilder: (context, index) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome To",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Delivery App",
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 25),
                  MyCachedNetworkImage(
                    _intros[index]['image']!,
                    height: 250,
                    borderRadius: 15,
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    _intros[index]['title']!,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _intros[index]['description']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _intros.length,
                      (index) => EasyContainer(
                        child: SizedBox.shrink(),
                        color: index == _currentPage
                            ? Theme.of(context).accentColor
                            : Colors.grey[200],
                        elevation: 0,
                        height: 20,
                        width: 60,
                        borderRadius: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Row(
              children: [
                if (index != 0) ...[
                  const SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () => _controller.previousPage(
                      duration: _switchDuration,
                      curve: Curves.ease,
                    ),
                  ),
                  const SizedBox(width: 30),
                ],
                Expanded(
                  child: EasyContainer(
                    elevation: 0,
                    height: 75,
                    padding: 15,
                    borderRadius: 15,
                    customMargin: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    child: Text(
                      (index == _intros.length - 1) ? "Get Started" : "Next",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onTap: () {
                      if (index == _intros.length - 1)
                        Navigator.pushReplacementNamed(
                          context,
                          RegisterScreen.id,
                        );
                      else
                        _controller.nextPage(
                          duration: _switchDuration,
                          curve: Curves.ease,
                        );
                    },
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: _intros.length,
      ),
    );
  }
}
