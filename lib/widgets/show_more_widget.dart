import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';

class ShowMoreWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String review;
  final List<String> items;
  
  const ShowMoreWidget({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.review,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 52,
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: detailStyle3,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/star.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Image.asset(
                      'assets/star.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Image.asset(
                      'assets/star.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Image.asset(
                      'assets/star.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Image.asset(
                      'assets/star.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text.rich(
                  TextSpan(
                    text: review,
                    style: detailStyle4,
                    children: [
                      TextSpan(
                        text: 'more',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: items
                        .map(
                          (item) => Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Image.asset(
                              item,
                              height: 72,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
