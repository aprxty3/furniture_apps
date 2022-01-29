import 'package:flutter/material.dart';

import '../theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        // color: Colors.amberAccent,
        margin: const EdgeInsets.only(left: 30, right: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/avatar.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Theresa Webb',
                  style: profilePageStyle1,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(4),
              width: 88,
              height: 44,
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('assets/switch_dark.png')),
            ),
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
          onTap: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, '/home');
            }
            if (value == 1) {
              Navigator.pushNamed(context, '/wishlist');
            }
          },
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
                color: kBlue,
              ),
              label: 'profile',
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/top_background.png',
          ),
          ListView(
            children: [
              const SizedBox(height: 120),
              header(),
            ],
          )
        ],
      ),
    );
  }
}
