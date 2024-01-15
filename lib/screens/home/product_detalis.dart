import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggraduating_project/GlobalComponents/button_global.dart';
import 'package:ggraduating_project/GlobalComponents/product_data.dart';
import 'package:ggraduating_project/providers/cart_provider.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({required this.product});

  final ProductData product;

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
                            // Center(
                            //   child: SizedBox(
                            //     width: 100.0,
                            //     height: 50.0,
                            //     child: Container(
                            //       decoration: BoxDecoration(
                            //         color: KSecondryHighContrast,
                            //         borderRadius: BorderRadius.circular(50.0),
                            //       ),
                            //       child: Row(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         children: [
                            //           GestureDetector(
                            //             onTap: () {
                            //               setState(() {
                            //                 quantity > 1
                            //                     ? quantity -= 1
                            //                     : quantity = 1;
                            //               });
                            //             },
                            //             child: const Icon(
                            //               Icons.remove,
                            //               color: Colors.white,
                            //             ),
                            //           ),
                            //           Padding(
                            //             padding: const EdgeInsets.only(
                            //                 left: 10.0, right: 10.0),
                            //             child: Text(
                            //               quantity.toString(),
                            //               style: kTextStyle.copyWith(
                            //                   color: Colors.white),
                            //             ),
                            //           ),
                            //           GestureDetector(
                            //             onTap: () {
                            //               setState(() {
                            //                 quantity > 0
                            //                     ? quantity += 1
                            //                     : quantity = 1;
                            //               });
                            //             },
                            //             child: const Icon(
                            //               Icons.add,
                            //               color: Colors.white,
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 20.0),
                              child: Row(
                                children: [
                                  Text(
                                    widget.product.productTitle,
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
                                      '\$${widget.product.productPrice}',
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
                                                ' ${widget.product.productTime}',
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
                                        onPressed: () {},
                                      ),
                                    ),
                                  );
                                }),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: ButtonGlobal(
                                      buttontext: 'Checkout',
                                      buttonDecoration:
                                          kButtonDecoration.copyWith(
                                              color: KSecondryHighContrast),
                                      onPressed: () {
                                        // const CheckoutScreen().launch(context);.................................
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: CircleAvatar(
                      backgroundColor: KSecondryContrast,
                      radius: MediaQuery.of(context).size.width / 4,
                      child: Image.asset(widget.product.productImage),
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
