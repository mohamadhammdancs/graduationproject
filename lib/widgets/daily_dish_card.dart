import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/product_data.dart';
import '../utils/constants.dart';

class DailyDishCard extends StatelessWidget {
  const DailyDishCard({Key? key, required this.productData}) : super(key: key);
  final ProductData productData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 160.0,
          height: 200,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          'Kitchenname',
                          style: kTextStyle.copyWith(color: kTitleColor),
                        ),
                      ),
                      SizedBox(
                        child: RichText(
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
