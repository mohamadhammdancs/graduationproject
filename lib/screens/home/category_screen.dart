import 'package:flutter/material.dart';
import 'package:ggraduating_project/screens/home/filtered_cat_screen.dart';
import 'package:ggraduating_project/widgets/cat_card.dart';
import 'package:ggraduating_project/GlobalComponents/category_data.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(color: KMainColorr
              
                  ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: const Icon(
                        Icons.arrow_back,
                        color: KDarkBlue,
                      ).onTap(() {
                        Navigator.pop(context);
                      }),
                    ),
                    Text(
                      'Cuisines',
                      style:
                          kTextStyle.copyWith(color: KDarkBlue, fontSize: 18.0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Expanded(
                  child: Container(
                    width: context.width(),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          childAspectRatio: 1,
                          crossAxisCount: 4,
                          children: List.generate(
                            catData.length,
                            (index) => CatCard(
                              catList: catData[index],
                            ).onTap(
                              () {
                                filteredKitchenScreen(
                                  filterType: catData[index].foodtype,
                                ).launch(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
