import 'package:flutter/material.dart';
import 'package:furniture_apps/theme.dart';
import 'package:furniture_apps/widgets/recom_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGrey,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: AppBar(
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
                      Expanded(
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          onFieldSubmitted: (value) {
                            Navigator.pushNamed(context, '/search_result');
                          },
                          decoration: const InputDecoration.collapsed(
                              hintText: 'Search Furniture'),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.close,
                        color: kGrey,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 41,
          ),
          Text(
            'Recommendation',
            style: recomStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          const RecomWidget(
            imageUrl: 'assets/list1.png',
            title: 'Poan Chair',
            price: 34,
          ),
          const RecomWidget(
            imageUrl: 'assets/list2.png',
            title: 'Poan Sofa',
            price: 34,
          ),
          const RecomWidget(
            imageUrl: 'assets/list3.png',
            title: 'Poan Chair',
            price: 34,
          ),
          const RecomWidget(
            imageUrl: 'assets/list4.png',
            title: 'Poan Table',
            price: 34,
          ),
        ],
      ),
    );
  }
}
