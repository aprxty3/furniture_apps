import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGrey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kWhite,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.chevron_left,
              color: kBlack,
            ),
            const SizedBox(
              width: 18,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: kWhiteGrey,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    TextFormField(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'hahaha',
        ),
      ),
    );
  }
}
