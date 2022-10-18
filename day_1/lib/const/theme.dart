import 'package:flutter/material.dart';

class ProjectTheme {
  ThemeData myProjectLightTheme = ThemeData.light().copyWith(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.green),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.red,
    ),
  );
}
