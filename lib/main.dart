import 'package:flutter/material.dart';
import 'package:terminus_app/screens/first_screen.dart';
import 'package:terminus_app/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen(), theme: lightTheme);
  }
}
