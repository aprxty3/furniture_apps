import 'package:flutter/material.dart';
import 'package:furniture_apps/widgets/product_grid_widget.dart';
import 'package:furniture_apps/widgets/recom_widget.dart';
import 'package:furniture_apps/widgets/skeleton_widget.dart';

import '../theme.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  bool isLoading = true;
  bool isGrid = true;

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
            GestureDetector(
              onTap: () {
                setState(() {
                  isGrid = !isGrid;
                });
              },
              child: Image.asset(
                  isGrid ? 'assets/icon_list.png' : 'assets/icon_grid.png',
                  width: 24),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        isLoading
            ? buildLoading()
            : isGrid
                ? buildGrid()
                : buildList()
      ],
    );
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

  Widget buildList() {
    return Column(
      children: const [
        RecomWidget(
          imageUrl: 'assets/list1.png',
          title: 'Poan Chair',
          price: 34,
        ),
        RecomWidget(
          imageUrl: 'assets/list2.png',
          title: 'Poan Sofa',
          price: 34,
        ),
        RecomWidget(
          imageUrl: 'assets/list3.png',
          title: 'Poan Chair',
          price: 34,
        ),
        RecomWidget(
          imageUrl: 'assets/list4.png',
          title: 'Poan Table',
          price: 34,
        ),
        RecomWidget(
          imageUrl: 'assets/search5.png',
          title: 'Poan Table',
          price: 34,
        ),
        RecomWidget(
          imageUrl: 'assets/search6.png',
          title: 'Poan Table',
          price: 34,
        ),
      ],
    );
  }
}
