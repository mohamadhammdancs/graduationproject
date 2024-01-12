import 'package:flutter/material.dart';
import 'package:ggraduating_project/screens/Authentication/sign_in.dart';

import 'package:ggraduating_project/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndexPage = 0;
  String buttonText = 'Next';

  List<Map<String, dynamic>> sliderList = [
    {
      "icon": 'images/onboard1.png',
      "title": 'Welcome to Neighbor\'s Kitchen',
      "description": 'Home made food made with love from home coocks.',
    },
    {
      "icon": 'images/onboard2.png',
      "title": 'Choose Your Favorite Food',
      "description": 'Take a tour and pick ur favourite dish and order it.',
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: KMainColorr,
        body: SizedBox(
          height: MediaQuery.of(context).size.height - 50,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              PageView.builder(
                itemCount: sliderList.length,
                controller: pageController,
                onPageChanged: (int index) =>
                    setState(() => currentIndexPage = index),
                itemBuilder: (_, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 10.0, top: 25.0, bottom: 20.0),
                        child: SizedBox(
                          width: context.width() / 1,
                          child: Text(
                            sliderList[index]['title'].toString(),
                            style: kTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                                color: KDarkBlue,
                                fontSize: 18.0),
                          ),
                        ),
                      ),
                      // ignore: sized_box_for_whitespace
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        // ignore: sized_box_for_whitespace
                        child: Text(
                          sliderList[index]['description'].toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          style: kTextStyle.copyWith(
                            color: KDarkBlue,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        sliderList[index]['icon'],
                        fit: BoxFit.cover,
                        width: context.width(),
                      ),
                    ],
                  );
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 200),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            currentIndexPage < 1
                                ? pageController.nextPage(
                                    duration:
                                        const Duration(microseconds: 1000),
                                    curve: Curves.bounceInOut)
                                : const SignIn().launch(context);
                          },
                        );
                      },
                      child: Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: KSecondryHighContrast,
                        ),
                        child: Center(
                          child: Image.asset('images/chevrons-right.png'),
                        ),
                      ),
                    ),
                    const Spacer(),
                    DotIndicator(
                      currentDotSize: 15,
                      dotSize: 6,
                      pageController: pageController,
                      pages: sliderList,
                      indicatorColor: KSecondryHighContrast,
                      unselectedIndicatorColor: KSecondryHighContrast,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
