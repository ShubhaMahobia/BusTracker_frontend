import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.lightBlue,
  );
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
}
