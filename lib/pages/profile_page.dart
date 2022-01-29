import 'dart:async';

import 'package:flutter/material.dart';
import 'package:furniture_apps/widgets/profile_widget.dart';

import '../theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isLightMode = true;
  double opacity = 1;
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
                  style: profileStyle1.copyWith(
                    color: isLightMode ? kBlackAccent : kWhite,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isLightMode = !isLightMode;
                  opacity = 0;
                });
                Timer(Duration(milliseconds: 500), () {
                  setState(() {
                    opacity = 1;
                  });
                });
              },
              child: Container(
                  padding: const EdgeInsets.all(4),
                  width: 88,
                  height: 44,
                  decoration: BoxDecoration(
                    color: isLightMode ? kWhite : kBlackAccent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: AnimatedAlign(
                    duration: Duration(milliseconds: 300),
                    alignment: isLightMode
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: isLightMode
                        ? Image.asset('assets/switch_dark.png')
                        : Image.asset('assets/switch_light.png'),
                  )),
            ),
          ],
        ),
      );
    }

    Widget mainContent() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        decoration: BoxDecoration(
          color: isLightMode ? kWhite : kBlackAccent,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileWidget(
              image: 'assets/icon_person.png',
              name: 'My Profile',
              isLightMode: isLightMode,
            ),
            ProfileWidget(
              image: 'assets/icon_map.png',
              name: 'My Address',
              isLightMode: isLightMode,
            ),
            ProfileWidget(
              image: 'assets/icon_shopping.png',
              name: 'My Order',
              isLightMode: isLightMode,
            ),
            ProfileWidget(
              image: 'assets/icon_card.png',
              name: 'Payment Method',
              isLightMode: isLightMode,
            ),
            ProfileWidget(
              image: 'assets/icon_heart.png',
              name: 'Wishlist',
              isLightMode: isLightMode,
            ),
            ProfileWidget(
              image: 'assets/icon_question.png',
              name: 'Frequently Asked Questions',
              isLightMode: isLightMode,
            ),
            ProfileWidget(
              image: 'assets/icon_headphones.png',
              name: 'Customer Care',
              isLightMode: isLightMode,
            ),
          ],
        ),
      );
    }

    return AnimatedOpacity(
      duration: Duration(milliseconds: 500),
      opacity: opacity,
      child: Scaffold(
        backgroundColor: isLightMode ? kWhiteGrey : kBlack,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: isLightMode ? kWhite : kBlackAccent,
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
                  color: isLightMode ? kBlack : kWhite,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_heart.png',
                  width: 24,
                  color: isLightMode ? kBlack : kWhite,
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
                mainContent(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
