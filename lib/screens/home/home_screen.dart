import 'package:flutter/material.dart';
import 'package:ggraduating_project/screens/home/product_detalis.dart';
import 'package:ggraduating_project/screens/home/product_screen.dart';
import 'package:ggraduating_project/widgets/cat_card.dart';
import 'package:ggraduating_project/widgets/kitchen_card.dart';
import 'package:ggraduating_project/GlobalComponents/category_data.dart';
import 'package:ggraduating_project/GlobalComponents/kitchen_data.dart';
import 'package:ggraduating_project/GlobalComponents/product_data.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../widgets/food_card.dart';
import 'category_screen.dart';
import 'kitchen_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> banner = ['images/banner1.png', 'images/banner2.png'];
  Future refresh() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: refresh,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Container(
                        padding: EdgeInsets.zero,
                        width: MediaQuery.of(context).size.width,
                        height: 130.0,
                        decoration: const BoxDecoration(
                          color: KMainColorr,
                          // image: DecorationImage(
                          //     image: AssetImage(
                          //       'images/homeheader.png',
                          //     ),
                          //     fit: BoxFit.cover),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                    height: 60,
                                    width: 230,
                                    child: Image(
                                        image: AssetImage(
                                            "images/homeScreenLogo.png"))),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: CircleAvatar(
                                    backgroundColor: KSecondryContrast,
                                    radius: 20.0,
                                    child: Icon(
                                      Icons.notifications_none_outlined,
                                      color: KSecondryHighContrast,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Row(
                            //   children: [
                            //     Padding(
                            //       padding: const EdgeInsets.all(10.0),
                            //       child: Column(
                            //         children: [
                            //           // Text(
                            //           //   'Negibour\'s Kitchen',
                            //           //   style: kTextStyle.copyWith(
                            //           //       color: KDarkBlue,
                            //           //       fontSize: 18.0,
                            //           //       fontWeight: FontWeight.bold),
                            //           // ),
                            //           RichText(
                            //             text: TextSpan(
                            //               children: [
                            //                 const WidgetSpan(
                            //                   child: Icon(
                            //                     Icons.location_on_outlined,
                            //                     color: KSecondryContrast,
                            //                   ),
                            //                 ),
                            //                 TextSpan(
                            //                   text: "Amman, Jordan",
                            //                   style: kTextStyle.copyWith(
                            //                       color: kGreyTextColor),
                            //                 ),
                            //               ],
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //     const Spacer(),
                            //     const CircleAvatar(
                            //       backgroundColor: KSecondryContrast,
                            //       radius: 20.0,
                            //       child: Icon(
                            //         Icons.notifications_none_outlined,
                            //         color: KSecondryHighContrast,
                            //       ),
                            //     ),
                            //     const SizedBox(
                            //       width: 20.0,
                            //     ),
                            //   ],
                            // ),
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(10, 30, 20, 0),
                            //   child: Row(
                            //     children: [
                            //       Expanded(
                            //         flex: 4,
                            //         child: Container(
                            //           decoration: BoxDecoration(
                            //               color: const Color(0xFFF7F5F2),
                            //               borderRadius:
                            //                   BorderRadius.circular(12)),
                            //           child: AppTextField(
                            //             textFieldType: TextFieldType.NAME,
                            //             decoration: const InputDecoration(
                            //               prefixIcon: Icon(
                            //                 Icons.search,
                            //                 color: kTitleColor,
                            //               ),
                            //               border: InputBorder.none,
                            //               fillColor: Color(0xFFF7F5F2),
                            //               contentPadding: EdgeInsets.all(10.0),
                            //               hintText: 'Search',
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //       const Expanded(
                            //           flex: 1,
                            //           child: Image(
                            //               image:
                            //                   AssetImage('images/filter.png'))),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    children: [
                      Text(
                        'Categories',
                        style: kTextStyle.copyWith(
                            color: kTitleColor, fontSize: 18.0),
                      ),
                      const Spacer(),
                      Text(
                        'See all',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ).onTap(() {
                        const CategoryScreen().launch(context);
                      }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: HorizontalList(
                    spacing: 15,
                    itemCount: catData.length,
                    itemBuilder: (_, i) {
                      return CatCard(catList: catData[i]).onTap(
                        () {},
                        highlightColor: context.cardColor,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    'Coming Soon',
                    style:
                        kTextStyle.copyWith(color: kTitleColor, fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: HorizontalList(
                    spacing: 10,
                    itemCount: banner.length,
                    itemBuilder: (_, i) {
                      return Image(
                        image: AssetImage(banner[i]),
                      ).onTap(
                        () {
                          // const CourseDetails().launch(context);
                        },
                        highlightColor: context.cardColor,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    children: [
                      Text(
                        'Daily Dishes',
                        style: kTextStyle.copyWith(
                            color: kTitleColor, fontSize: 18.0),
                      ),
                      const Spacer(),
                      Text(
                        'See all',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ).onTap(() {
                        const ProductScreen().launch(context);
                      }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: HorizontalList(
                    spacing: 10,
                    itemCount: productList.length,
                    itemBuilder: (_, i) {
                      return FoodCard(productData: productList[i]).onTap(
                        () {
                          ProductDetails(product: productList[i])
                              .launch(context);
                        },
                        highlightColor: context.cardColor,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    'Kitchens',
                    style:
                        kTextStyle.copyWith(color: kTitleColor, fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 1000,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: kitchenList.length,
                        itemBuilder: (_, n) {
                          return KitchenCard(kitchenData: kitchenList[n]).onTap(
                              () {
                            KitchenDetails(kitchen: kitchenList[n])
                                .launch(context);
                          }, highlightColor: context.cardColor);
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// Padding(
              //   padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              //   child: Text(
              //     'Book Your Restaurant',
              //     style:
              //         kTextStyle.copyWith(color: kTitleColor, fontSize: 18.0),
              //   ),
              // ),
              // HorizontalList(
              //   spacing: 10,
              //   itemCount: restaurantList.length,
              //   itemBuilder: (_, i) {
              //     return BookTableCard(restaurantData: restaurantList[i]).onTap(
              //       () {
              //         // const CourseDetails().launch(context);
              //       },
              //       highlightColor: context.cardColor,
              //     );
              //   },
              // ),