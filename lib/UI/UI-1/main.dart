import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/screens/intro_screen.dart';
import 'package:flutter_ui/UI/UI-1/utils/constants.dart';
import 'package:flutter_ui/UI/UI-1/utils/route_generator.dart';

void main() => runApp(UI1());

class UI1 extends StatelessWidget {
  const UI1();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: kAppTheme,
      darkTheme: kAppTheme,
      initialRoute: IntroScreen.id,
    );
  }
}
