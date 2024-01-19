import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ggraduating_project/models/cart_item.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:ggraduating_project/screens/Orders/order_schat.dart';
import 'package:nb_utils/nb_utils.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder(
      {Key? key, required this.orderCartItems, this.orderkitchenName})
      : super(key: key);
  final List<CartItem> orderCartItems;
  final String? orderkitchenName;
  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  var dialogContext;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(color: KMainColorr
                  
                  ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: KDarkBlue,
                  ).onTap(() {
                    Navigator.pop(context);
                  }),
                ),
                Text(
                  'Track Your Order',
                  style: kTextStyle.copyWith(color: KDarkBlue),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.location_searching,
                    color: KDarkBlue,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80.0,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                      image: DecorationImage(
                        image: AssetImage("images/mapbig.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 100.0,
                    decoration: const BoxDecoration(
                      color: kTitleColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundColor: KMainColorr,
                            child: Image(
                              image: AssetImage('images/logo1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${widget.orderkitchenName}',
                                  style: kTextStyle.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Food Courier',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                                RatingBarIndicator(
                                  rating: 4.8,
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 10.0,
                                ),
                              ]),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            ChatScreen(
                              kitchenName: widget.orderkitchenName.toString(),
                            ).launch(context);
                          },
                          child: const CircleAvatar(
                            radius: 20.0,
                            backgroundColor: KSecondryContrast,
                            child: Icon(
                              Icons.messenger_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                dialogContext = context;
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  // ignore: sized_box_for_whitespace
                                  child: Container(
                                    padding: const EdgeInsets.all(20.0),
                                    height:
                                        MediaQuery.of(context).size.height / 4,
                                    width:
                                        MediaQuery.of(context).size.width - 80,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          const CircleAvatar(
                                            radius: 20,
                                            backgroundColor:
                                                KSecondryHighContrast,
                                            child: CircleAvatar(
                                              radius: 18,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                Icons.phone_android_rounded,
                                                size: 15.0,
                                                color: KSecondryHighContrast,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 30.0),
                                          Text(
                                            '${widget.orderkitchenName} Phone Number',
                                            style: kTextStyle.copyWith(
                                                color: kTitleColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(height: 10.0),
                                          SelectionArea(
                                            child: Text(
                                              '0789234456',
                                              style: kTextStyle.copyWith(
                                                  color: kGreyTextColor),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          const SizedBox(height: 10.0),
                                          // ButtonGlobal(
                                          //     buttontext: 'Track Your Order',
                                          //     buttonDecoration:
                                          //         kButtonDecoration.copyWith(
                                          //             color:
                                          //                 KSecondryHighContrast),
                                          //     onPressed: () {
                                          //       TrackOrder(
                                          //         orderCartItems:
                                          //             widget.CartItems,
                                          //         orderkitchenName:
                                          //             widget.kitchenName,
                                          //       ).launch(context);
                                          //     }),
                                          SizedBox(
                                            width: context.width(),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.arrow_back,
                                                  color: KDarkBlue,
                                                ),
                                                Text(
                                                  "Go Back",
                                                  style: kTextStyle.copyWith(
                                                      color: kGreyTextColor),
                                                ),
                                              ],
                                            ),
                                          ).onTap(() {
                                            Navigator.pop(context);
                                          }),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: KSecondryContrast,
                              child: Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: KDarkBlue.withOpacity(.4),
                            child: Icon(
                              Icons.location_on,
                              color: KDarkBlue,
                            ),
                          ),
                          title: Text(
                            'Address',
                            style: kTextStyle.copyWith(color: kGreyTextColor),
                          ),
                          subtitle: Text(
                            'Al senaah Street',
                            style: kTextStyle.copyWith(
                                color: kTitleColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xFFECEAFF),
                            child: Icon(
                              Icons.access_time,
                              color: Color(0xFF7165E3),
                            ),
                          ),
                          title: Text(
                            'Delivery Time',
                            style: kTextStyle.copyWith(color: kGreyTextColor),
                          ),
                          subtitle: Text(
                            '20-30 minutes',
                            style: kTextStyle.copyWith(
                                color: kTitleColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xFFDCF8FF),
                            child: Icon(
                              Icons.system_security_update_good,
                              color: Color(0xFF29C4F0),
                            ),
                          ),
                          title: Text(
                            'Order# ',
                            style: kTextStyle.copyWith(color: kGreyTextColor),
                          ),
                          subtitle: Text(
                            '135464',
                            style: kTextStyle.copyWith(
                                color: kTitleColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
