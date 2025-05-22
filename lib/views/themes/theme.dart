import 'package:flutter/material.dart';

ThemeData whatsappTheme() {
  return ThemeData(
    primaryColor: const Color(0xFF075E54),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF075E54),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),

      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: const ColorScheme.light(primary: Color(0xFF075E54)),
  );
}
