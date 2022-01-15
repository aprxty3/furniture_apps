import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 99, bottom: 127),
              width: double.infinity,
              height: 322,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/onboard1.png'),
                ),
              ),
            ),
            Text(
              'Buy Furniture Easily',
              style: onboard1,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
              style: onboard2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
