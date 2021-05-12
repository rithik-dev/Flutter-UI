import 'package:flutter/material.dart';

const Color kAccentColor = Color(0xFF393486);

const FONT_FAMILY = 'ProductSans';

final kAppTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: FONT_FAMILY,
).copyWith(
  primaryColor: kAccentColor,
  accentColor: kAccentColor,
  appBarTheme: AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  iconTheme: IconThemeData(color: Colors.black),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: kAccentColor,
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: kAccentColor,
    elevation: 15,
    contentTextStyle: TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontFamily: FONT_FAMILY,
    ),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    },
  ),
);
