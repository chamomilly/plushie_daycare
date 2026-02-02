import 'package:flutter/material.dart';

final appTheme = ThemeData(
  primarySwatch: MaterialColor(0xFFFC6955, {
    50: Color(0xFFFEF4F2),
    100: Color(0xFFFDE4E0),
    200: Color(0xFFFBC5BD),
    300: Color(0xFFF9A69A),
    400: Color(0xFFF78D7F),
    500: Color(0xFFFC6955),
    600: Color(0xFFE55F4E),
    700: Color(0xFFCC5546),
    800: Color(0xFFB34B3E),
    900: Color(0xFF8A3A2F),
  }),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xFFFC6955),
    secondary: Color(0xFFFEDA96),
  ),
  textTheme: TextTheme(
    labelLarge: TextStyle(
      color: Color(0xFFFC6955),
      fontFamily: 'SourGummy',
      fontSize: 24,
    ),
    labelMedium: TextStyle(
      color: Color(0xFFFC6955),
      fontFamily: 'SourGummy',
      fontSize: 18,
    ),

    bodyLarge: TextStyle(
      color: Color(0xFFFEDA96),
      fontFamily: 'SourGummy',
      fontSize: 24,
    ),

    bodyMedium: TextStyle(
      color: Color(0xFFFEDA96),
      fontFamily: 'SourGummy',
      fontSize: 18,
    ),
  ),
);
