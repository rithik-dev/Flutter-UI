import 'package:flutter/material.dart';
import 'package:flutter_ui/src/constants.dart';
import 'package:flutter_ui/src/main_home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kAppTheme,
      darkTheme: kAppTheme,
      home: MainHomeScreen(),
    );
  }
}
