import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFF515fd9);
  static const Color lightBlue = Color(0xFF2596be);

    static const String fontName = 'SourceSansPro';
     static const TextTheme textTheme = TextTheme(
    headline5: headline,
  );

  static const TextStyle headline = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: primaryColor,
  );

}
