import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/category_data.dart';
import 'package:ggraduating_project/utils/constants.dart';

class CatCard extends StatelessWidget {
  const CatCard({Key? key, required this.catList}) : super(key: key);
  final CategoryData catList;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
            backgroundColor: KSecondryContrast,
            radius: 35.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage(catList.catIcon),
              ),
            )),
        Text(
          catList.catTitle,
          style: kTextStyle.copyWith(color: kTitleColor),
        ),
      ],
    );
  }
}
