import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFF0124FB);
  static const Color lightBlue = Color(0xFF2596be);

  static const String sourceSansPro = 'SourceSansPro';
  static const String quickSand = 'QuickSand';
  static const TextTheme textTheme = TextTheme(
    headline5: headline,
  );

  static const TextStyle headline = TextStyle(
    fontFamily: quickSand,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: primaryColor,
  );
}
