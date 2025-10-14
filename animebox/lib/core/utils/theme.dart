import 'package:flutter/material.dart';

final darkTheme = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF006466),
    brightness: Brightness.dark,
  ),

  scaffoldBackgroundColor: const Color.fromARGB(255, 6, 12, 16),
  appBarTheme: AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 6, 12, 16),
  ),

  cardColor: const Color(0xff144552),

  textTheme: TextTheme(
    titleLarge: TextStyle(fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontWeight: FontWeight.bold),
    titleSmall: TextStyle(fontWeight: FontWeight.bold),

    bodyMedium: TextStyle(color: const Color(0xff272640)),
    bodySmall: TextStyle(color: const Color(0xff272640)),
  ),
);
