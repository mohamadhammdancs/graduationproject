import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:ggraduating_project/GlobalComponents/button_global.dart';
import 'package:ggraduating_project/models/cart.dart';
import 'package:ggraduating_project/models/cart_item.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:ggraduating_project/screens/Checkout/track_order.dart';
import 'package:ggraduating_project/widgets/Checkout_item_card.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key, required this.CartItems});
  final List<CartItem> CartItems;

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  // ignore: prefer_typing_uninitialized_variables
  var dialogContext;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  List<String> data = ["Debit Card", "Cash On Delivery"];
  List<String> userChecked = [];
  List<String> icons = [
    'images/card.png',
    'images/cod.png',
  ];

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Card(
          elevation: 0.0,
          color: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Consumer<Cart>(
                  builder: (context, cart, child) {
                    return Row(
                      children: [
                        Text(
                          '${cart.totalPrice}',
                          style: kTextStyle.copyWith(
                              color: kTitleColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        const Text(
                          'JOD',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromARGB(255, 3, 70, 5)),
                        ),
                      ],
                    );
                  },
                )),
                Expanded(
                  child: Container(
                    height: 55.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: KSecondryHighContrast,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                                        MediaQuery.of(context).size.height / 2,
                                    width:
                                        MediaQuery.of(context).size.width - 80,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          const CircleAvatar(
                                            radius: 50,
                                            backgroundColor:
                                                KSecondryHighContrast,
                                            child: CircleAvatar(
                                              radius: 48,
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                Icons.done_rounded,
                                                size: 45.0,
                                                color: KSecondryHighContrast,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 30.0),
                                          Text(
                                            'Order successful',
                                            style: kTextStyle.copyWith(
                                                color: kTitleColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(height: 10.0),
                                          Text(
                                            'Your order #15462 is successfully placed',
                                            style: kTextStyle.copyWith(
                                                color: kGreyTextColor),
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 10.0),
                                          ButtonGlobal(
                                              buttontext: 'Track Your Order',
                                              buttonDecoration:
                                                  kButtonDecoration.copyWith(
                                                      color:
                                                          KSecondryHighContrast),
                                              onPressed: () {
                                                const TrackOrder()
                                                    .launch(context);
                                              }),
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
                          child: Text(
                            'Checkout',
                            style: kTextStyle.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
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
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
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
                      Text(
                        'Checkout',
                        style: kTextStyle.copyWith(
                            color: KDarkBlue, fontSize: 18.0),
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
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Text(
                                'Address',
                                style: kTextStyle.copyWith(
                                    color: kTitleColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              // GestureDetector(
                              //     onTap: () => showDialog(
                              //         context: context,
                              //         builder: (BuildContext context) {
                              //           dialogContext = context;
                              //           return SingleChildScrollView(
                              //             child: Dialog(
                              //               shape: RoundedRectangleBorder(
                              //                 borderRadius:
                              //                     BorderRadius.circular(12.0),
                              //               ),
                              //               // ignore: sized_box_for_whitespace
                              //               child: Container(
                              //                 color: KMainColorr,
                              //                 padding:
                              //                     const EdgeInsets.all(20.0),
                              //                 height: MediaQuery.of(context)
                              //                         .size
                              //                         .height /
                              //                     1.3,
                              //                 width: MediaQuery.of(context)
                              //                         .size
                              //                         .width -
                              //                     80,
                              //                 child: Center(
                              //                   child: Column(
                              //                     children: [
                              //                       Text(
                              //                         'Add New Address',
                              //                         style:
                              //                             kTextStyle.copyWith(
                              //                                 color:
                              //                                     kTitleColor,
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .bold),
                              //                       ),
                              //                       Text(
                              //                         'Please Enter Your Current Address Here',
                              //                         style:
                              //                             kTextStyle.copyWith(
                              //                           color: kGreyTextColor,
                              //                         ),
                              //                         textAlign:
                              //                             TextAlign.center,
                              //                       ),
                              //                       Padding(
                              //                         padding:
                              //                             const EdgeInsets.only(
                              //                                 top: 10.0,
                              //                                 bottom: 10.0),
                              //                         child: Image.asset(
                              //                             'images/mapsmall.png'),
                              //                       ),
                              //                       Padding(
                              //                         padding:
                              //                             const EdgeInsets.only(
                              //                                 top: 10.0,
                              //                                 bottom: 10.0),
                              //                         child: AppTextField(
                              //                           cursorColor:
                              //                               KMainColorr,
                              //                           textFieldType:
                              //                               TextFieldType
                              //                                   .ADDRESS,
                              //                           decoration:
                              //                               const InputDecoration(
                              //                             labelText:
                              //                                 'Street Address & City',
                              //                             hintText:
                              //                                 '112/3 Kolatola Ave',
                              //                             border:
                              //                                 OutlineInputBorder(),
                              //                           ),
                              //                         ),
                              //                       ),
                              //                       Padding(
                              //                         padding:
                              //                             const EdgeInsets.only(
                              //                                 top: 10.0,
                              //                                 bottom: 10.0),
                              //                         child: AppTextField(
                              //                           textFieldType:
                              //                               TextFieldType
                              //                                   .ADDRESS,
                              //                           decoration:
                              //                               const InputDecoration(
                              //                             labelText: 'Road No',
                              //                             hintText: '112/3',
                              //                             border:
                              //                                 OutlineInputBorder(),
                              //                           ),
                              //                         ),
                              //                       ),
                              //                       Padding(
                              //                         padding:
                              //                             const EdgeInsets.only(
                              //                                 top: 10.0,
                              //                                 bottom: 10.0),
                              //                         child: AppTextField(
                              //                           textFieldType:
                              //                               TextFieldType.PHONE,
                              //                           decoration:
                              //                               const InputDecoration(
                              //                             labelText:
                              //                                 'Post Code',
                              //                             hintText: '1205',
                              //                             border:
                              //                                 OutlineInputBorder(),
                              //                           ),
                              //                         ),
                              //                       ),
                              //                       ButtonGlobal(
                              //                           buttontext:
                              //                               'Save Address',
                              //                           buttonDecoration:
                              //                               kButtonDecoration
                              //                                   .copyWith(
                              //                                       color:
                              //                                           KSecondryHighContrast),
                              //                           onPressed: () {
                              //                             Navigator.pop(
                              //                                 dialogContext);
                              //                           }),
                              //                     ],
                              //                   ),
                              //                 ),
                              //               ),
                              //             ),
                              //           );
                              //         }),
                              //     child: Text(
                              //       'Add New',
                              //       style: kTextStyle.copyWith(
                              //         color: kGreyTextColor,
                              //       ),
                              //     )),
                            ],
                          ),
                        ),
                        //address card
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      KSecondryHighContrast.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor:
                                    KSecondryHighContrast.withOpacity(0.2),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.location_on,
                                    color: KSecondryHighContrast,
                                  ),
                                ),
                              ),
                              title: Text(
                                'Home',
                                style: kTextStyle.copyWith(
                                    color: kTitleColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'Amman,7th Cicle,Abu goshah Street ,villa no.28',
                                style:
                                    kTextStyle.copyWith(color: kGreyTextColor),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: Row(
                            children: [
                              Text(
                                'Dishes In Cart:',
                                style: kTextStyle.copyWith(
                                    color: kTitleColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              // GestureDetector(
                              //     onTap: () => showDialog(
                              //         context: context,
                              //         builder: (BuildContext context) {
                              //           dialogContext = context;
                              //           return SingleChildScrollView(
                              //             child: Dialog(
                              //               shape: RoundedRectangleBorder(
                              //                 borderRadius:
                              //                     BorderRadius.circular(12.0),
                              //               ),
                              //               // ignore: sized_box_for_whitespace
                              //               child: Container(
                              //                 color: KMainColorr,
                              //                 padding:
                              //                     const EdgeInsets.all(20.0),
                              //                 height: MediaQuery.of(context)
                              //                         .size
                              //                         .height /
                              //                     1.3,
                              //                 width: MediaQuery.of(context)
                              //                         .size
                              //                         .width -
                              //                     80,
                              //                 child: Center(
                              //                   child: Column(
                              //                     children: [
                              //                       Text(
                              //                         'Add New Address',
                              //                         style:
                              //                             kTextStyle.copyWith(
                              //                                 color:
                              //                                     kTitleColor,
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .bold),
                              //                       ),
                              //                       Text(
                              //                         'Please Enter Your Current Address Here',
                              //                         style:
                              //                             kTextStyle.copyWith(
                              //                           color: kGreyTextColor,
                              //                         ),
                              //                         textAlign:
                              //                             TextAlign.center,
                              //                       ),
                              //                       Padding(
                              //                         padding:
                              //                             const EdgeInsets.only(
                              //                                 top: 10.0,
                              //                                 bottom: 10.0),
                              //                         child: Image.asset(
                              //                             'images/mapsmall.png'),
                              //                       ),
                              //                       Padding(
                              //                         padding:
                              //                             const EdgeInsets.only(
                              //                                 top: 10.0,
                              //                                 bottom: 10.0),
                              //                         child: AppTextField(
                              //                           cursorColor:
                              //                               KMainColorr,
                              //                           textFieldType:
                              //                               TextFieldType
                              //                                   .ADDRESS,
                              //                           decoration:
                              //                               const InputDecoration(
                              //                             labelText:
                              //                                 'Street Address & City',
                              //                             hintText:
                              //                                 '112/3 Kolatola Ave',
                              //                             border:
                              //                                 OutlineInputBorder(),
                              //                           ),
                              //                         ),
                              //                       ),
                              //                       Padding(
                              //                         padding:
                              //                             const EdgeInsets.only(
                              //                                 top: 10.0,
                              //                                 bottom: 10.0),
                              //                         child: AppTextField(
                              //                           textFieldType:
                              //                               TextFieldType
                              //                                   .ADDRESS,
                              //                           decoration:
                              //                               const InputDecoration(
                              //                             labelText: 'Road No',
                              //                             hintText: '112/3',
                              //                             border:
                              //                                 OutlineInputBorder(),
                              //                           ),
                              //                         ),
                              //                       ),
                              //                       Padding(
                              //                         padding:
                              //                             const EdgeInsets.only(
                              //                                 top: 10.0,
                              //                                 bottom: 10.0),
                              //                         child: AppTextField(
                              //                           textFieldType:
                              //                               TextFieldType.PHONE,
                              //                           decoration:
                              //                               const InputDecoration(
                              //                             labelText:
                              //                                 'Post Code',
                              //                             hintText: '1205',
                              //                             border:
                              //                                 OutlineInputBorder(),
                              //                           ),
                              //                         ),
                              //                       ),
                              //                       ButtonGlobal(
                              //                           buttontext:
                              //                               'Save Address',
                              //                           buttonDecoration:
                              //                               kButtonDecoration
                              //                                   .copyWith(
                              //                                       color:
                              //                                           KSecondryHighContrast),
                              //                           onPressed: () {
                              //                             Navigator.pop(
                              //                                 dialogContext);
                              //                           }),
                              //                     ],
                              //                   ),
                              //                 ),
                              //               ),
                              //             ),
                              //           );
                              //         }),
                              //     child: Text(
                              //       'Add New',
                              //       style: kTextStyle.copyWith(
                              //         color: kGreyTextColor,
                              //       ),
                              //     )),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: widget.CartItems.length,
                              itemBuilder: (context, index) {
                                return CheckoutItemCard(
                                  cartItem: widget.CartItems[index],
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                          width: context.width(),
                          padding: const EdgeInsets.all(20.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0)),
                            color: Color(0xFFF5F5F5),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Payment Method',
                                    style: kTextStyle.copyWith(
                                        color: kTitleColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height,
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: data.length,
                                  itemBuilder: (context, i) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: CheckboxListTile(
                                          activeColor: KSecondryContrast,
                                          title: GestureDetector(
                                            child: Text(data[i]),
                                            //....
                                          ),
                                          secondary: Image.asset(icons[i]),
                                          value: userChecked.contains(data[i]),
                                          onChanged: (val) {
                                            // _onSelected(val!, data[i]);
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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

// Padding(
//   padding:
//       const EdgeInsets.only(left: 20.0, right: 20.0),
//   child: Container(
//     decoration: BoxDecoration(
//       border:
//           Border.all(color: KDarkBlue.withOpacity(0.2)),
//       borderRadius: BorderRadius.circular(10.0),
//     ),
//     child: ListTile(
//       leading: CircleAvatar(
//         backgroundColor: KDarkBlue.withOpacity(0.2),
//         child: const Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Icon(
//             Icons.badge,
//             color: KDarkBlue,
//           ),
//         ),
//       ),
//       title: Text(
//         'Office',
//         style: kTextStyle.copyWith(
//             color: kTitleColor,
//             fontWeight: FontWeight.bold),
//       ),
//       subtitle: Text(
//         '34 North Sulphur Springs Dr. Alexandria, VA 22304',
//         style:
//             kTextStyle.copyWith(color: kGreyTextColor),
//       ),
//     ),
//   ),
// ),

//.....

// onTap: () => showDialog(
//     context: context,
//     builder:
//         (BuildContext context) {
//       dialogContext = context;
//       return SingleChildScrollView(
//         child: Dialog(
//           shape:
//               RoundedRectangleBorder(
//             borderRadius:
//                 BorderRadius
//                     .circular(12.0),
//           ),
//           // ignore: sized_box_for_whitespace
//           child: Container(
//             padding:
//                 const EdgeInsets
//                     .only(
//                     top: 20.0,
//                     bottom: 20.0),
//             width: MediaQuery.of(
//                     context)
//                 .size
//                 .width,
//             child: Center(
//               child: Column(
//                 children: [
//                   Text(
//                     'Add New Card',
//                     style: kTextStyle.copyWith(
//                         color:
//                             kTitleColor,
//                         fontWeight:
//                             FontWeight
//                                 .bold),
//                   ),
//                   CreditCardWidget(
//                     textStyle: kTextStyle.copyWith(
//                         fontSize:
//                             10.0,
//                         color: Colors
//                             .white),
//                     cardNumber:
//                         cardNumber,
//                     expiryDate:
//                         expiryDate,
//                     cardHolderName:
//                         cardHolderName,
//                     cvvCode:
//                         cvvCode,
//                     showBackView:
//                         isCvvFocused,
//                     obscureCardNumber:
//                         true,
//                     obscureCardCvv:
//                         true,
//                     isHolderNameVisible:
//                         true,
//                     cardBgColor:
//                         KDarkBlue,
//                     isSwipeGestureEnabled:
//                         true,
//                     onCreditCardWidgetChange:
//                         (CreditCardBrand
//                             creditCardBrand) {},
//                   ),
//                   CreditCardForm(
//                     formKey:
//                         formKey,
//                     // Required
//                     onCreditCardModelChange:
//                         onCreditCardModelChange,
//                     // Required
//                     obscureCvv:
//                         true,
//                     obscureNumber:
//                         true,
//                     cardNumber:
//                         cardNumber,
//                     cvvCode:
//                         cvvCode,
//                     isHolderNameVisible:
//                         true,
//                     isCardNumberVisible:
//                         true,
//                     isExpiryDateVisible:
//                         true,
//                     cardHolderName:
//                         cardHolderName,
//                     expiryDate:
//                         expiryDate,
//                     themeColor:
//                         Colors
//                             .black,
//                     textColor:
//                         kTitleColor,
//                     cardNumberDecoration:
//                         const InputDecoration(
//                       border:
//                           OutlineInputBorder(),
//                       labelText:
//                           'Number',
//                       hintText:
//                           'XXXX XXXX XXXX XXXX',
//                     ),
//                     expiryDateDecoration:
//                         const InputDecoration(
//                       border:
//                           OutlineInputBorder(),
//                       labelText:
//                           'Expired Date',
//                       hintText:
//                           'XX/XX',
//                     ),
//                     cvvCodeDecoration:
//                         const InputDecoration(
//                       border:
//                           OutlineInputBorder(),
//                       labelText:
//                           'CVV',
//                       hintText:
//                           'XXX',
//                     ),
//                     cardHolderDecoration:
//                         const InputDecoration(
//                       border:
//                           OutlineInputBorder(),
//                       labelText:
//                           'Card Holder',
//                     ),
//                   ),
//                   ButtonGlobal(
//                       buttontext:
//                           'Save Information',
//                       buttonDecoration:
//                           kButtonDecoration.copyWith(
//                               color:
//                                   KSecondryHighContrast),
//                       onPressed:
//                           () {
//                         Navigator.pop(
//                             dialogContext);
//                       }),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );
//     }
//     ),
