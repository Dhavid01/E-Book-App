import 'package:book_app/utils/color.dart';
import 'package:flutter/material.dart';

class PopularView extends StatelessWidget {
  const PopularView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 170,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kPrimaryLightColor))
      ],
    );
  }
}
