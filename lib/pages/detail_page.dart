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
