import 'package:flutter/material.dart';
import 'package:ggraduating_project/Cards/kitchen_dishes_card.dart';
import 'package:ggraduating_project/GlobalComponents/kitchen_data.dart';
import 'package:ggraduating_project/constants.dart';
import 'package:nb_utils/nb_utils.dart';

class KitchenDetails extends StatefulWidget {
  const KitchenDetails({required this.kitchen});

  final KitchenData kitchen;

  @override
  _KitchenDetailsState createState() => _KitchenDetailsState();
}

class _KitchenDetailsState extends State<KitchenDetails> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(color: KMainColorr
                  // image: DecorationImage(
                  //   image: AssetImage("images/authbg.png"),
                  //   fit: BoxFit.cover,
                  // ),
                  ),
            ),
            SingleChildScrollView(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
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
                          const Spacer(),
                          CircleAvatar(
                            backgroundColor: Colors.red.withOpacity(0.1),
                            radius: 16.0,
                            child: const Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                              size: 16.0,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Container(
                        height: context.height(),
                        width: context.width(),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)),
                          color: Colors.white,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 100.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0, top: 20.0),
                                child: Row(
                                  children: [
                                    Text(
                                      widget.kitchen.kitchenName,
                                      style: kTextStyle.copyWith(
                                          color: kTitleColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0,
                                    bottom: 20.0,
                                    top: 10.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        '${widget.kitchen.kitchenFoodTypes}',
                                        style: kTextStyle.copyWith(
                                          color: KSecondryContrast,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: widget.kitchen.kitchenRating
                                                .toString(),
                                            style: kTextStyle.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: kTitleColor,
                                                fontSize: 16),
                                          ),
                                          const WidgetSpan(
                                            child: Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Divider(
                                endIndent: 20,
                                indent: 20,
                                color: KSecondryHighContrast,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 1000,
                                  child: ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: widget.kitchen.dishes.length,
                                      itemBuilder: (_, n) {
                                        return KitchenDishesCards(
                                            kitchenDishesData:
                                                widget.kitchen.dishes[n]);
                                      }),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: CircleAvatar(
                      backgroundColor: KSecondryContrast,
                      radius: MediaQuery.of(context).size.width / 4,
                      child: Image.asset(widget.kitchen.kitchenImagePath),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
