import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show Clipboard, ClipboardData;
import 'package:flutter_ui/src/main_app_data.dart';
import 'package:url_launcher/url_launcher.dart';

class MainHomeScreen extends StatelessWidget {
  static const _BASE_URL_CODE =
      'https://user-images.githubusercontent.com/56810766/';
  static const _BASE_URL_REPOSITORY =
      'https://github.com/rithik-dev/Flutter-UI/tree/master/lib/UI/UI-';

  static const _appData = MAIN_APP_DATA;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final videoLink = _BASE_URL_CODE + _appData[index]['gif'];
          final repositoryLink = '$_BASE_URL_REPOSITORY${index + 1}';
          return Scaffold(
            backgroundColor: Theme.of(context).appBarTheme.color,
            appBar: AppBar(
              title: Text("Flutter UI's"),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    radius: 20,
                    child: Text(
                      (index + 1).toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            body: Align(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.hardEdge,
                color: Colors.transparent,
                child: CachedNetworkImage(
                  imageUrl: videoLink,
                  placeholder: (c, _) =>
                      Center(child: CircularProgressIndicator()),
                ),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _CopyLinkButton(repositoryLink: repositoryLink),
                  FloatingActionButton.extended(
                    icon: Icon(Icons.code),
                    label: Text("Code"),
                    onPressed: () async {
                      if (await canLaunch(repositoryLink))
                        await launch(repositoryLink);
                    },
                  ),
                  FloatingActionButton.extended(
                    icon: Icon(Icons.open_in_full),
                    label: Text("Open"),
                    onPressed: () => runApp(_appData[index]['app']),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: _appData.length,
      ),
    );
  }
}

class _CopyLinkButton extends StatefulWidget {
  final String repositoryLink;

  const _CopyLinkButton({
    Key? key,
    required this.repositoryLink,
  }) : super(key: key);

  @override
  __CopyLinkButtonState createState() => __CopyLinkButtonState();
}

class __CopyLinkButtonState extends State<_CopyLinkButton> {
  bool _copied = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: Text(_copied ? "Copied" : "Copy"),
      icon: Icon(_copied ? Icons.check : Icons.copy),
      onPressed: () async {
        Clipboard.setData(ClipboardData(text: widget.repositoryLink));
        setState(() => _copied = true);
        await Future.delayed(Duration(seconds: 1));
        setState(() => _copied = false);
      },
    );
  }
}
