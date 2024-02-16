import 'package:flutter/material.dart';
import 'package:practica3/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 225, 212, 255),
        appBarTheme: AppBarTheme(color: Color.fromARGB(255, 85, 3, 74)),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Color.fromARGB(255, 37, 0, 29),
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-helvetica',
          ),
        ),
      ),
    );
  }
}