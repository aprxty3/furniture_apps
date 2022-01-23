import 'package:flutter/material.dart';
import 'package:furniture_apps/widgets/product_grid_widget.dart';
import 'package:furniture_apps/widgets/skeleton_widget.dart';

import '../theme.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  bool isLoading = true;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  color: kBlue,
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
        appBar: PreferredSize(
          child: AppBar(
            elevation: 0,
            backgroundColor: kWhite,
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: kBlack,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  'Wishlist',
                  style: popularStyle2,
                ),
                const Spacer(),
                Image.asset(
                  'assets/icon_search.png',
                  width: 24,
                ),
              ],
            ),
          ),
          preferredSize: const Size(double.infinity, 60),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children: [
              const SizedBox(
                height: 30,
              ),
              isLoading ? buildLoading() : buildGrid(),
            ]));
  }

  Widget buildLoading() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      runSpacing: 12,
      spacing: 7,
      children: const [
        SkeletonWidget(),
        SkeletonWidget(),
        SkeletonWidget(),
        SkeletonWidget(),
        SkeletonWidget(),
        SkeletonWidget(),
      ],
    );
  }

  Widget buildGrid() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      runSpacing: 12,
      spacing: 7,
      children: const [
        ProductGridWidget(
          imageUrl: 'assets/search1.png',
          title: 'Poan Chair',
          price: 14,
          isWishlish: false,
        ),
        ProductGridWidget(
          imageUrl: 'assets/search2.png',
          title: 'Poan Chair',
          price: 14,
          isWishlish: true,
        ),
        ProductGridWidget(
          imageUrl: 'assets/search3.png',
          title: 'Poan Chair',
          price: 14,
          isWishlish: false,
        ),
        ProductGridWidget(
          imageUrl: 'assets/search4.png',
          title: 'Poan Chair',
          price: 14,
          isWishlish: false,
        ),
        ProductGridWidget(
          imageUrl: 'assets/search5.png',
          title: 'Poan Chair',
          price: 14,
          isWishlish: false,
        ),
        ProductGridWidget(
          imageUrl: 'assets/search6.png',
          title: 'Poan Chair',
          price: 14,
          isWishlish: true,
        ),
      ],
    );
  }
}
