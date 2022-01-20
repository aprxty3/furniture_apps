import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';
import 'package:furniture_apps/widgets/category_cart_widget.dart';
import 'package:furniture_apps/widgets/popilar_cart_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int categoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Image.asset(
              'assets/black_logo.png',
              width: 53,
              height: 44,
            ),
            const SizedBox(
              width: 8.5,
            ),
            Text(
              'Space',
              style: spaceStyle,
            ),
            const Spacer(),
            Image.asset(
              'assets/icon_shopping_cart.png',
              width: 30,
            ),
          ],
        ),
      );
    }

    Widget searchBar() {
      return Container(
        margin: const EdgeInsets.only(top: 30, left: 24, right: 24),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Search Funiture',
              style: searchStyle,
            ),
            Image.asset(
              'assets/icon_search.png',
              width: 24,
              color: kGrey,
            ),
          ],
        ),
      );
    }

    Widget categoryText() {
      return Container(
        margin: const EdgeInsets.only(top: 30, left: 24, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Category',
              style: categoryStyle1,
            ),
            Text(
              'Show All',
              style: showAllStyle,
            ),
          ],
        ),
      );
    }

    Widget categoryCart() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 25),
            child: CarouselSlider(
              items: const [
                CategoryCartWidget(
                  imageUrl: 'assets/category1.png',
                  mainText: 'Minimalist Chair',
                  subText: 'Chair',
                ),
                CategoryCartWidget(
                  imageUrl: 'assets/category2.png',
                  mainText: 'Minimalist Table',
                  subText: 'Table',
                ),
                CategoryCartWidget(
                  imageUrl: 'assets/category3.png',
                  mainText: 'Minimalist Chair',
                  subText: 'Chair',
                ),
              ],
              options: CarouselOptions(
                height: 140,
                enableInfiniteScroll: false,
                viewportFraction: 1,
                onPageChanged: (value, _) {
                  setState(() {
                    categoryIndex = value;
                  });
                },
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 13,
              left: 24,
              right: 24,
            ),
            child: Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: categoryIndex == 0 ? kBlack : kLineDark,
                  ),
                ),
                Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: categoryIndex == 1 ? kBlack : kLineDark,
                  ),
                ),
                Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: categoryIndex == 2 ? kBlack : kLineDark,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget popular() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(40),
          ),
          color: kWhite,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular', style: popularStyle1),
                  Text('Show All', style: showAllStyle)
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 300,
              child: Row(
                children: const [
                  PopularCartWidget(
                    title: 'Poan Chair',
                    imageUrl: 'assets/list1.png',
                    price: 34,
                    isWishlist: true,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteGrey,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: kWhite,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 24,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_heart.png',
                width: 24,
              ),
              label: 'wishlish',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_person.png',
                width: 24,
              ),
              label: 'profile',
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset('assets/top_background.png'),
          ListView(
            children: [
              header(),
              searchBar(),
              categoryText(),
              categoryCart(),
              popular(),
            ],
          )
        ],
      ),
    );
  }
}
