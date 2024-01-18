//main.dart

import 'package:flutter/material.dart';
import 'package:my_app/pages/welcome_page.dart';
import 'package:my_app/theme/dark_theme.dart';
import 'package:my_app/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App',
      darkTheme: darkTheme,
      theme: lightTheme,
      themeMode: ThemeMode.system,
      home: const WelcomePage(),
    );
  }
}
