import 'package:flutter/material.dart';
import 'package:furniture_apps/widgets/skeleton_widget.dart';

import '../theme.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 110),
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
                const SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/icon_options.png',
                  width: 24,
                ),
              ],
            ),
            bottom: TabBar(
              indicatorColor: kBlack,
              labelColor: kBlack,
              isScrollable: true,
              tabs: const [
                Tab(text: 'Chair'),
                Tab(text: 'Table'),
                Tab(text: 'Accessories'),
                Tab(text: 'Living Room'),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          buildBody(),
          buildBody(),
          buildBody(),
          buildBody(),
        ]),
      ),
    );
  }
}

Widget buildBody() {
  return ListView(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    children: [
      const SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Result for : Poang',
            style: recomStyle,
          ),
          Image.asset('assets/icon_list.png', width: 24),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      buildLoading(),
    ],
  );
}

Widget buildLoading() {
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    runSpacing: 12,
    spacing: 7,
    children: [
      SkeletonWidget(),
      SkeletonWidget(),
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
  return Container();
}
