
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  // Declaraciones de color
  static const mainColor = Color.fromARGB(255, 85, 3, 74);
  static const backColor = Color.fromARGB(255, 225, 212, 255);

  // Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color:mainColor),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.nunito(
        color: mainColor,
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
        decorationColor: Colors.black,
        decorationStyle: TextDecorationStyle.dashed,
        decorationThickness: 3.0,
       // fontStyle: FontStyle.italic,
        ),
       // bodySmall:
      ),
  );
}