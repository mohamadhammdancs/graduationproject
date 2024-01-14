import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggraduating_project/GlobalComponents/button_global.dart';
import 'package:ggraduating_project/GlobalComponents/kitchen_data.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:ggraduating_project/models/cart.dart';
import 'package:provider/provider.dart';

class DishDetailsScreen extends StatefulWidget {
  const DishDetailsScreen({Key? key, required this.dishData});

  final Dish dishData;

  @override
  _DishDetailsScreenState createState() => _DishDetailsScreenState();
}

class _DishDetailsScreenState extends State<DishDetailsScreen> {
  int quantity = 1;

  get dishData => null;

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
                          // CircleAvatar(
                          //   backgroundColor: Colors.red.withOpacity(0.1),
                          //   radius: 16.0,
                          //   child: const Icon(
                          //     Icons.favorite_rounded,
                          //     color: Colors.red,
                          //     size: 16.0,
                          //   ),
                          // ),
                          // const SizedBox(
                          //   width: 10.0,
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Container(
                        width: context.width(),
                        height: context.height(),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 100.0,
                            ),
                            Center(
                              child: SizedBox(
                                width: 100.0,
                                height: 50.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: KSecondryHighContrast,
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            quantity > 1
                                                ? quantity -= 1
                                                : quantity = 1;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, right: 10.0),
                                        child: Text(
                                          quantity.toString(),
                                          style: kTextStyle.copyWith(
                                              color: Colors.white),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            quantity > 0
                                                ? quantity += 1
                                                : quantity = 1;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 20.0),
                              child: Row(
                                children: [
                                  Text(
                                    widget.dishData.dishName,
                                    style: kTextStyle.copyWith(
                                        color: KDarkBlue,
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
                                      '\$${widget.dishData.price}',
                                      style: kTextStyle.copyWith(
                                        color: KSecondryContrast,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Expanded(
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          const WidgetSpan(
                                            child: Icon(
                                              FontAwesomeIcons.clock,
                                              color: KDarkBlue,
                                              size: 18.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                ' ${widget.dishData.noOfOrders}',
                                            style: kTextStyle.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: KSecondryContrast,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                              child: Text('Description :',
                                  style: kTextStyle.copyWith(
                                      color: KDarkBlue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Container(
                                child: Text(
                                    'This is a fake description for the proucts This is a fake description for the proucts This is a fakeThis is a fake description for the proucts description for the proucts This is a fake description for the proucts This is a This is a fake description for the prouctsfake description for the proucts This is a fake description for the proucts',
                                    style: kTextStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: KSecondryContrast,
                                    )),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  filled: true,
                                  fillColor: KSecondryContrast,
                                  hintText: 'Write your text here',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                maxLines: 7, // This will allow infinite lines
                              ),
                            ), // Padding(
                            //   padding: const EdgeInsets.all(20.0),
                            //   child: ReadMoreText(
                            //     widget.product.productDescription,
                            //     trimLines: 10,
                            //     colorClickableText: kMainColor,
                            //     trimMode: TrimMode.Line,
                            //     style: kTextStyle.copyWith(color: kTitleColor),
                            //     trimCollapsedText: 'Show more',
                            //     trimExpandedText: 'Show less',
                            //     moreStyle:
                            //         kTextStyle.copyWith(color: kMainColor),
                            //   ),
                            // ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Consumer<Cart>(builder: (context, cart, child) {
                                  return Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: ButtonGlobal(
                                        buttontext: 'Add To Cart',
                                        buttonDecoration:
                                            kButtonDecoration.copyWith(
                                                color: KSecondryHighContrast),
                                        onPressed: () {
                                          cart.add(widget.dishData);
                                        },
                                      ),
                                    ),
                                  );
                                }),
                                // Expanded(
                                //   child: Padding(
                                //     padding: const EdgeInsets.all(10.0),
                                //     child: ButtonGlobal(
                                //       buttontext: 'Checkout',
                                //       buttonDecoration:
                                //           kButtonDecoration.copyWith(
                                //               color: KSecondryHighContrast),
                                //       onPressed: () {
                                //         CheckoutScreen().launch(context);
                                //       },
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: ClipOval(
                      child: Image.network(
                        fit: BoxFit.fill,
                        widget.dishData.imagePath,
                        width: 200,
                        height: 200,
                      ),
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
