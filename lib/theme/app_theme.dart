
import 'package:flutter/material.dart';

class AppTheme{
  // Declaraciones de color
  static const mainColor = Color.fromARGB(255, 85, 3, 74);
  static const backColor = Color.fromARGB(255, 225, 212, 255);

  // Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color:mainColor),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Color.fromARGB(255, 37, 0, 29),
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'sans-helvetica',
        ),
      ),
  );
}