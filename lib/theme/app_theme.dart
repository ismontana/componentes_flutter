
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
  static const negroColor = Colors.black;

  // Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: AppBarTheme(
      color:mainColor,
      titleTextStyle: GoogleFonts.nunito(
        color: subtitleColor,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: iconColor,
      size: 35.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          mainColor
          ),
          foregroundColor: MaterialStateProperty.all(
          backColor
          ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.nunito(
            fontSize: 12.0,
            fontStyle: FontStyle.italic),
        ),
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.nunito(
        color: mainColor,
        fontSize: 16.0,
        fontWeight: FontWeight.w800,
        decoration: TextDecoration.none,
        decorationColor: Colors.white,
        decorationStyle: TextDecorationStyle.dashed,
        decorationThickness: 3.0,
       // fontStyle: FontStyle.italic,
        ),
         headlineMedium: GoogleFonts.nunito(
        color: negroColor,
        fontSize: 15.0,
        fontWeight: FontWeight.w800,
        decorationStyle: TextDecorationStyle.dashed,
        decorationThickness: 1.5,
        ),
      // Define el estilo para bodySmall
      bodySmall: GoogleFonts.nunito(
        color: subtitleColor,
        fontSize: 12.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: GoogleFonts.nunito(
        color: subtitleColor,
        fontSize: 12.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}