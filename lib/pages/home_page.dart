import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            ],
          )
        ],
      ),
    );
  }
}

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
