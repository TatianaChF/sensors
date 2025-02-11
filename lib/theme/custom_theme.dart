import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

ThemeData _buildCustomTheme() {
  const Color primaryColor = Color(0xFFD4E4D7);
  const Color secondaryColor = Color(0xFF102C14);

  return ThemeData(
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: Colors.white
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
      )
    ),

    cardTheme: CardTheme(
      color: primaryColor,
      margin: EdgeInsets.only(left: 15, right: 15),
    )
  );
}