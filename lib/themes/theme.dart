import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme:
      ColorScheme.fromSeed(
        seedColor: Colors.purpleAccent,
        brightness: Brightness.light,
      ).copyWith(),
);
