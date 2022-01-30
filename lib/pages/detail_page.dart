import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 66),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 20,
              ),
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kWhite,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.chevron_left,
                ),
              ),
            ),
            Image.asset('assets/detail1.png')
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteGrey,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: 96,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kWhite,
        ),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: kWhiteGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image.asset(
                  'assets/icon_shopping_cart.png',
                  width: 32,
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                width: 300,
                height: 56,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kBlack,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Book Now',
                    style: booknowStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/top_background.png',
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              header(),
            ],
          )
        ],
      ),
    );
  }
}
