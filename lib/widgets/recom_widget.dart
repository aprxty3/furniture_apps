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
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 60,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
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
