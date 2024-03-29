import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/product_data.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:ggraduating_project/screens/Orders/order_details.dart';
import 'package:nb_utils/nb_utils.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<String> tabTitle = [
    'All Order',
    'Pending',
    'Confirmed',
    'Processing',
    'Delivered'
  ];
  Future refresh() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(color: KMainColorr),
            ),
            RefreshIndicator(
              onRefresh: refresh,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Orders',
                            style: kTextStyle.copyWith(
                                color: KDarkBlue, fontSize: 25.0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      width: context.width(),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0)),
                        color: kDarkWhite,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20.0,
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: productList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                          color:
                                              kGreyTextColor.withOpacity(0.1)),
                                    ),
                                    child: Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              productList[index].productImage),
                                          height: 60.0,
                                          width: 60.0,
                                        ),
                                        const SizedBox(
                                          width: 4.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              productList[index].productTitle,
                                              style: kTextStyle.copyWith(
                                                  color: KSecondryHighContrast,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '\$${productList[index].productPrice}',
                                              style: kTextStyle.copyWith(
                                                  color: KSecondryHighContrast,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              width: 4.0,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  decoration: BoxDecoration(
                                                    color: KSecondryContrast
                                                        .withOpacity(0.1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            1.0),
                                                  ),
                                                  child: Text(
                                                    'Confirmed',
                                                    style: kTextStyle.copyWith(
                                                        color:
                                                            KSecondryHighContrast,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 50.0,
                                                ),
                                                Text(
                                                  '23 Jan, 2021',
                                                  style: kTextStyle.copyWith(
                                                      color: kGreyTextColor),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ).onTap(() {
                                    const OrderDetails().launch(context);
                                  }),
                                );
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
