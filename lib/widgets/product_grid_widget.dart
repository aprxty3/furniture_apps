import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';
import 'package:shimmer/shimmer.dart';

class ProductGridWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int price;
  final bool isWishlish;

  const ProductGridWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.isWishlish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: (MediaQuery.of(context).size.width - 71) / 2,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageUrl),
            const SizedBox(height: 20),
            Text(
              title,
              style: popularStyle2,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$$price',
                  style: popularStyle2,
                ),
                Image.asset(
                  isWishlish
                      ? 'assets/wishlish_red.png'
                      : 'assets/wishlish_grey.png',
                  width: 44,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
