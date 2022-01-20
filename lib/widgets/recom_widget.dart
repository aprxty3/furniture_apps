import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';

class RecomWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int price;
  const RecomWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: kWhiteGrey,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: recomStyle,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                '\$$price',
                style: recomStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
