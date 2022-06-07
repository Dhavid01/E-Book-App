import 'package:book_app/utils/color.dart';
import 'package:book_app/utils/text.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
              const Icon(
                Icons.more_vert_rounded,
                color: kPrimaryColor,
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
        SliverToBoxAdapter(
          child: Row(
            children: [
              AppText.captionMedium(
                "Popular Books",
                color: Colors.black,
              ),
            ],
          ),
        ),
        
      ],
    )));
  }
}
