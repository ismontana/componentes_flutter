
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  // Color de iconos flechitas
  static const iconColor = Color.fromARGB(255, 99, 17, 119);
  // Declaraciones de color para titulos
  static const mainColor = Color.fromARGB(255, 85, 3, 74);
  static const backColor = Color.fromARGB(255, 225, 212, 255);
  // Declaraciones para bodySmall
  static const subtitleColor = Color.fromARGB(255, 114, 111, 113);

  // Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color:mainColor),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.nunito(
        color: mainColor,
        fontSize: 16.0,
        fontWeight: FontWeight.w800,
        decoration: TextDecoration.none,
        decorationColor: Colors.black,
        decorationStyle: TextDecorationStyle.dashed,
        decorationThickness: 3.0,
       // fontStyle: FontStyle.italic,
        ),
      // Define el estilo para bodySmall
      bodySmall: GoogleFonts.nunito(
        color: subtitleColor,
        fontSize: 12.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}