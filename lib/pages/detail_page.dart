import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color indicatorColor = kBlackAccent;
  double indicatorMargin = 5;

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

    Widget mainContent() {
      return SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.32,
          minChildSize: 0.32,
          maxChildSize: 0.9,
          builder: (BuildContext build, ScrollController scrollController) {
            return Container(
              padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        width: 30,
                        height: 4,
                        decoration: BoxDecoration(
                          color: kLineDark,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Poang Chair',
                          style: detailStyle1,
                        ),
                        Text(
                          '\$219',
                          style: detailStyle2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'IKOE',
                      style: detailStyle3,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 50,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Row(
                            children: [
                              colorIndicator(kBlackAccent, 0),
                              colorIndicator(kYellow, 1),
                              colorIndicator(kGrey, 2),
                              colorIndicator(kBlack, 3),
                              colorIndicator(kWhiteGrey, 4),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: indicatorMargin),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: indicatorColor,
                              border: Border.all(
                                width: 3,
                                color: kWhite,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 16),
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
          header(),
          mainContent(),
        ],
      ),
    );
  }

  Widget colorIndicator(Color color, int index) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
