import 'package:flutter/material.dart';

import '../theme.dart';

class ProfileWidget extends StatelessWidget {
  final String name;
  final String image;
  final bool isLightMode;
  const ProfileWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.isLightMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 24,
            color: isLightMode ? kBlack : kWhite,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            name,
            style: profileStyle2.copyWith(
              color: isLightMode ? kBlack : kWhite,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right,
              color: isLightMode ? kGrey : kWhiteGrey,
            ),
          ),
        ],
      ),
    );
  }
}
