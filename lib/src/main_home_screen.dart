import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/my_cached_network_image.dart';
import 'package:flutter_ui/src/main_app_data.dart';

class MainHomeScreen extends StatelessWidget {
  static const _BASE_URL =
      'https://user-images.githubusercontent.com/56810766/';

  static final _appData = MAIN_APP_DATA;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Flutter UI's")),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return EasyContainer(
              height: 500,
              onTap: () => runApp(_appData[index]['app']),
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (c, i) => const SizedBox(width: 10),
                itemBuilder: (context, imageIndex) {
                  final path =
                      _BASE_URL + _appData[index]['screenshots'][imageIndex];

                  return MyCachedNetworkImage(
                    path,
                    height: double.infinity,
                    borderRadius: 15,
                    width: 230,
                    cover: false,
                  );
                },
                itemCount: (_appData[index]['screenshots'] as List).length,
              ),
            );
          },
          itemCount: _appData.length,
        ),
      ),
    );
  }
}
