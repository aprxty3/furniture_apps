import 'package:flutter/material.dart';

import '../theme.dart';

class OnboardItem extends StatelessWidget {
  final String imgUrl;
  final String mainText;
  final String secondText;
  const OnboardItem({
    Key? key,
    required this.imgUrl,
    required this.mainText,
    required this.secondText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 70, bottom: 100),
          width: double.infinity,
          height: 322,
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgUrl),
            ),
          ),
        ),
        Text(
          mainText,
          style: onboard1,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          secondText,
          style: onboard2,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
