import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:french_app/pages/sign_in_page.dart';
import 'package:french_app/pages/sign_up_page.dart';
import 'package:french_app/pages/home_page.dart';
import 'package:french_app/pages/lesson_detail_page.dart';
import 'package:french_app/pages/mcq_test_page.dart';
import 'package:french_app/pages/profile_page.dart';
import 'package:french_app/pages/welcome_page.dart';
import 'package:french_app/theme/dark_theme.dart';
import 'package:french_app/theme/light_theme.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App',
      darkTheme: darkTheme,
      theme: lightTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/signIn': (context) => SignInPage(),
        '/signUp': (context) => SignupPage(),
        '/home': (context) => const HomePage(),
        '/lessonDetail': (context) => const LessonDetailPage(lessonName: '', levelName: ''),
        '/mcqTest': (context) => const MCQTestPage(lessonName: '', levelName: '',),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
