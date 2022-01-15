import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';

class SplashScrenn extends StatelessWidget {
  const SplashScrenn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              width: 98,
              height: 82,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/light_logo.png'),
                ),
              ),
            ),
            Text(
              'Space',
              style: splashStyle,
            ),
          ],
        ),
      ),
    );
  }
}
