import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:ggraduating_project/models/kitchen_data.dart';
import 'package:ggraduating_project/screens/home/filtered_cat_screen.dart';
import 'package:ggraduating_project/screens/home/daily_dish_details.dart';
import 'package:ggraduating_project/screens/home/product_screen.dart';
import 'package:ggraduating_project/widgets/cat_card.dart';
import 'package:ggraduating_project/widgets/kitchen_card.dart';
import 'package:ggraduating_project/GlobalComponents/category_data.dart';
import 'package:ggraduating_project/GlobalComponents/product_data.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../widgets/daily_dish_card.dart';
import 'category_screen.dart';
import 'kitchen_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> banner = [
    'images/banner-comingsoon-1.png',
    'images/banner-comingsoon-2.png'
  ];
  Future refresh() async {
    setState(() {});
  }

  final somingSoon = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Coming Soon ;)',
      message: 'In the making',
      contentType: ContentType.comingSoon,
    ),
  );
  void reternCat() {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDarkWhite,
        body: RefreshIndicator(
          onRefresh: refresh,
          child: SingleChildScrollView(
            child: ClipRRect(
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
                          'Cuisines',
                          style: kTextStyle.copyWith(
                              color: kTitleColor, fontSize: 18.0),
                        ),
                        const Spacer(),
                        Text(
                          'See all',
                          style: kTextStyle.copyWith(color: kGreyTextColor),
                        ).onTap(() {
                          CategoryScreen().launch(context);
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
                          () {
                            filteredKitchenScreen(
                              filterType: catData[i].foodtype,
                            ).launch(context);
                          },
                          highlightColor: context.cardColor,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      'Coming Soon',
                      style: kTextStyle.copyWith(
                          color: kTitleColor, fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: HorizontalList(
                      spacing: 10,
                      itemCount: banner.length,
                      itemBuilder: (_, i) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 120,
                            width: 320,
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(banner[i]),
                            ).onTap(
                              () {
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(somingSoon);
                              },
                              highlightColor: context.cardColor,
                            ),
                          ),
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
                        return DailyDishCard(productData: productList[i]).onTap(
                          () {
                            DailyDishDetails(product: productList[i])
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
                      style: kTextStyle.copyWith(
                          color: kTitleColor, fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: context.height() + 250,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: kitchenList.length,
                          itemBuilder: (_, n) {
                            return KitchenCard(kitchenData: kitchenList[n])
                                .onTap(() {
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
      ),
    );
  }
}
