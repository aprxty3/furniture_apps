import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: kBlack,
        body: Center(
          child: Text(
            'Space',
            style: splashStyle,
          ),
        ),
      ),
    );
  }
}
