import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggraduating_project/GlobalComponents/product_data.dart';

import '../utils/constants.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({Key? key, required this.productData}) : super(key: key);
  final ProductData productData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 160.0,
          child: Card(
            color: kDarkWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage(productData.productImage),
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        productData.productTitle,
                        style: kTextStyle.copyWith(color: kTitleColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      // RatingBarIndicator(
                      //   rating: productData.productRating.toDouble(),
                      //   itemBuilder: (context, index) => const Icon(
                      //     Icons.star,
                      //     color: Colors.amber,
                      //   ),
                      //   itemCount: 5,
                      //   itemSize: 10.0,
                      // ),
                      Icon(
                        FontAwesomeIcons.clock,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        productData.productTime,
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            const WidgetSpan(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 12.0),
                                child: Icon(
                                  Icons.attach_money,
                                  color: KSecondryHighContrast,
                                  size: 7.0,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: productData.productPrice,
                              style: kTextStyle.copyWith(
                                  color: kTitleColor, fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        backgroundColor: KSecondryContrast,
                        radius: 16.0,
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: KSecondryHighContrast,
                          size: 16.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 10.0,
          right: 10.0,
          child: CircleAvatar(
            backgroundColor: const Color(0xFFE51000).withOpacity(0.1),
            radius: 16.0,
            child: const Icon(
              Icons.favorite,
              color: Color(0xFFE51000),
              size: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}