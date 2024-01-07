import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/button_global.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:ggraduating_project/screens/Orders/order_review.dart';

import 'package:nb_utils/nb_utils.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
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
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: KDarkBlue,
                        ).onTap(() {
                          Navigator.pop(context);
                        }),
                      ),
                    ),
                    Text(
                      'Order Details',
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
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.3,
                          isFirst: true,
                          indicatorStyle: const IndicatorStyle(
                            width: 20,
                            color: KSecondryContrast,
                          ),
                          startChild: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 10.0),
                            child: Text(
                              '10.00 pm',
                              style: kTextStyle.copyWith(color: kTitleColor),
                            ),
                          ),
                          endChild: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order Placed',
                                  style:
                                      kTextStyle.copyWith(color: kTitleColor),
                                ),
                                Text(
                                  '23 Jan, 2021',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                          beforeLineStyle: const LineStyle(
                            color: KSecondryContrast,
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.3,
                          indicatorStyle: const IndicatorStyle(
                            width: 20,
                            color: KSecondryContrast,
                          ),
                          startChild: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 10.0),
                            child: Text(
                              '10.00 pm',
                              style: kTextStyle.copyWith(color: kTitleColor),
                            ),
                          ),
                          endChild: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pending',
                                  style:
                                      kTextStyle.copyWith(color: kTitleColor),
                                ),
                                Text(
                                  '23 Jan, 2021',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                          beforeLineStyle: const LineStyle(
                            color: KSecondryContrast,
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.3,
                          indicatorStyle: const IndicatorStyle(
                            width: 20,
                            color: KSecondryContrast,
                          ),
                          startChild: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 10.0),
                            child: Text(
                              '10.00 pm',
                              style: kTextStyle.copyWith(color: kTitleColor),
                            ),
                          ),
                          endChild: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Confirmed',
                                  style:
                                      kTextStyle.copyWith(color: kTitleColor),
                                ),
                                Text(
                                  '23 Jan, 2021',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                          beforeLineStyle: const LineStyle(
                            color: KSecondryContrast,
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.3,
                          indicatorStyle: const IndicatorStyle(
                            width: 20,
                            color: kGreyTextColor,
                          ),
                          startChild: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 10.0),
                            child: Text(
                              '10.00 pm',
                              style: kTextStyle.copyWith(color: kTitleColor),
                            ),
                          ),
                          endChild: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Picked',
                                  style:
                                      kTextStyle.copyWith(color: kTitleColor),
                                ),
                                Text(
                                  '23 Jan, 2021',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                          beforeLineStyle: const LineStyle(
                            color: kGreyTextColor,
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.3,
                          isLast: true,
                          indicatorStyle: const IndicatorStyle(
                            width: 20,
                            color: kGreyTextColor,
                          ),
                          startChild: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 10.0),
                            child: Text(
                              '10.00 pm',
                              style: kTextStyle.copyWith(color: kTitleColor),
                            ),
                          ),
                          endChild: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, left: 4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Delivered',
                                  style:
                                      kTextStyle.copyWith(color: kTitleColor),
                                ),
                                Text(
                                  '23 Jan, 2021',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                          beforeLineStyle: const LineStyle(
                            color: kGreyTextColor,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: KSecondryContrast,
                            radius: 30.0,
                            child: Image.asset('images/product1.png'),
                          ),
                          title: Text(
                            'Delicious Pizza',
                            style: kTextStyle.copyWith(color: kTitleColor),
                          ),
                          subtitle: Text(
                            '\$8.99',
                            style: kTextStyle.copyWith(color: KDarkBlue),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ButtonGlobalWithoutIcon(
                                buttontext: 'Order Again',
                                buttonDecoration: kButtonDecoration.copyWith(
                                    color: KSecondryHighContrast),
                                onPressed: null,
                                buttonTextColor: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: ButtonGlobalWithoutIcon(
                                buttontext: 'Review',
                                buttonDecoration: kButtonDecoration.copyWith(
                                    color: const Color(0xFFE8E7E5)),
                                onPressed: () {
                                  const OrderReview().launch(context);
                                },
                                buttonTextColor: kGreyTextColor,
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
          ],
        ),
      ),
    );
  }
}
