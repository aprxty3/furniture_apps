import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';
import 'package:furniture_apps/widgets/category_cart_widget.dart';
import 'package:furniture_apps/widgets/product_grid_widget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGrey,
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
                'Chair',
                style: popularStyle2,
              ),
              const Spacer(),
              Image.asset(
                'assets/icon_search.png',
                width: 24,
              ),
              const SizedBox(
                width: 15,
              ),
              Image.asset(
                'assets/icon_options.png',
                width: 24,
              )
            ],
          ),
        ),
        preferredSize: const Size(double.infinity, 60),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 15,
          ),
          const CategoryCartWidget(
            imageUrl: 'assets/category1.png',
            mainText: 'Minimalist Chair',
            subText: 'Chair',
          ),
          const SizedBox(
            height: 24,
          ),
          buildGrid(),
        ],
      ),
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
