import 'package:book_app/utils/color.dart';
import 'package:book_app/utils/text.dart';
import 'package:book_app/views/home/components/tabs.dart';
import 'package:book_app/widgets/popular_view.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var selectedIndex = 0;

  List<String> tabsList = [
    "Horror",
    "Romance",
    "Mystery",
    "Fantasy",
    "Sci-Fi",
    "Thriller",
    "Historical",
    "Dystopian",
    "Magical Realism",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_rounded,
                  color: kPrimaryColor,
                ),
              ),
              AppText.headingMeduim(
                "Home",
                color: Colors.blue,
              ),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.1)),
                child: const Icon(
                  Icons.search,
                  color: kPrimaryColor,
                ),
              )
            ],
          ),
        ),
        SliverPinnedHeader(
            child: AppText.caption(
          " Popular",
          color: Colors.black,
          centered: false,
        )),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Row(
              children: [...List.generate(9, (index) => PopularView())],
            ),
          ),
        )),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 18,
          ),
        ),
        SliverPinnedHeader(
            child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                    tabsList.length,
                    (index) => Tabs(
                        color: index == selectedIndex
                            ? Colors.orange
                            : Colors.white,
                        text: tabsList[index]))
              ],
            ),
          ),
        ))
      ],
    )));
  }
}
