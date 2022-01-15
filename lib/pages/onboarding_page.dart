import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';
import 'package:furniture_apps/widgets/onboard_item.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: CarouselSlider(
                items: const [
                  OnboardItem(
                    imgUrl: 'assets/onboard1.png',
                    mainText: 'Buy Furniture Easily',
                    secondText:
                        'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
                  ),
                  OnboardItem(
                    imgUrl: 'assets/onboard2.png',
                    mainText: 'Fast Delivery',
                    secondText:
                        'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
                  ),
                  OnboardItem(
                    imgUrl: 'assets/onboard3.png',
                    mainText: 'Best Price',
                    secondText:
                        'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
                  ),
                ],
                options: CarouselOptions(
                  height: double.infinity,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'SKIP',
                      style: onboard3,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: kBlack),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kGrey,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kGrey,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'NEXT',
                      style: onboard3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
