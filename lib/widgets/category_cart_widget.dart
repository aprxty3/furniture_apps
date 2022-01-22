import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';

class CategoryCartWidget extends StatelessWidget {
  final String imageUrl;
  final String mainText;
  final String subText;

  const CategoryCartWidget({
    Key? key,
    required this.imageUrl,
    required this.mainText,
    required this.subText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/category');
      },
      child: Container(
        margin: const EdgeInsets.all(0),
        height: 123,
        width: MediaQuery.of(context).size.width - (2 * 24),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 102,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          mainText,
                          style: categoryStyle2,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          subText,
                          style: categoryStyle3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              imageUrl,
              height: 122,
            )
          ],
        ),
      ),
    );
  }
}
