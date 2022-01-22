import 'package:flutter/material.dart';
import 'package:furniture_apps/pages/category_page.dart';
import 'package:furniture_apps/pages/home_page.dart';
import 'package:furniture_apps/pages/onboarding_page.dart';
import 'package:furniture_apps/pages/search_page.dart';
import 'package:furniture_apps/pages/searct_result_page.dart';
import 'package:furniture_apps/pages/sign_in_page.dart';
import 'package:furniture_apps/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScrenn(),
        '/onboard': (context) => OnboardPage(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/search_result': (context) => SearchResult(),
        '/category': (context) => CategoryPage(),
      },
    );
  }
}
