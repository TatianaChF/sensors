import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

ThemeData _buildCustomTheme() {
  const Color primaryColor = Color(0xFF102C14);
  const Color secondaryColor = Color(0xFFD4E4D7);

  return ThemeData(
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: Colors.white
    )
  );
}