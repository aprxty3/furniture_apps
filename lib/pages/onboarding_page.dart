import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';
import 'package:furniture_apps/widgets/onboard_item.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  int currentIndex = 0;
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                initialPage: currentIndex,
                onPageChanged: (index, _) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              carouselController: controller,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    controller.animateToPage(2);
                  },
                  child: Text('SKIP', style: onboard3),
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 0 ? kBlack : kLineDark,
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
                        color: currentIndex == 1 ? kBlack : kLineDark,
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
                        color: currentIndex == 2 ? kBlack : kLineDark,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    if (currentIndex == 2) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/sign-in', (route) => false);
                    } else {
                      controller.nextPage();
                    }
                  },
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
    );
  }
}
