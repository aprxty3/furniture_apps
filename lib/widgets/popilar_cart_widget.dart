import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';

class PopularCartWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int price;
  final bool isWishlist;
  const PopularCartWidget({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.isWishlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(left: 24),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                color: kWhiteGrey,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Image.asset(imageUrl),
              ),
            ),
            Container(
              width: 200,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: popularStyle2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${price}',
                        style: popularStyle2,
                      ),
                      Image.asset(
                        isWishlist
                            ? 'assets/wishlish_red.png'
                            : 'assets/wishlish_grey.png',
                        width: 44,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
