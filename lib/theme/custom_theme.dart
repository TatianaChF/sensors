import 'package:flutter/material.dart';

ThemeData customTheme() {
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

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: secondaryColor,
        padding: EdgeInsets.all(20)
      )
    ),

    cardTheme: CardTheme(
      color: primaryColor,
      margin: EdgeInsets.only(left: 15, right: 15),
    ),

    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: secondaryColor,
      indicatorColor: primaryColor,
      labelTextStyle: WidgetStateProperty.all(
        const TextStyle(color: Colors.white,)
      )
    ),

    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: secondaryColor
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold, 
        color: secondaryColor
      ),
      labelLarge: TextStyle(
        fontSize: 20,
        color: secondaryColor
      ),
      bodySmall: TextStyle(
        color: Colors.white
      ),
      labelSmall: TextStyle(
        fontSize: 15,
        color: secondaryColor,
        fontWeight: FontWeight.bold
      )
    )
  );
}