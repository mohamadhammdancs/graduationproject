// ignore_for_file: non_constant_identifier_names

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:ggraduating_project/models/kitchen_data.dart';
import 'package:ggraduating_project/providers/cart_provider.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:ggraduating_project/screens/Checkout/checkout_screen.dart';
import 'package:ggraduating_project/widgets/cart_item_card.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, this.CartItems});
  final List<Dish>? CartItems;

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // int quantity = 1;
  late double TotalPrice;
  Future refresh() async {
    setState(() {});
  }

  final snackBarFailure = SnackBar(
    clipBehavior: Clip.none,
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Problem!',
      message: 'you cant checkout with empty cart ! ',
      contentType: ContentType.failure,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: refresh,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: KMainColorr,
          body: SizedBox(
            height: context.height(),
            child: Column(children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Cart',
                      style:
                          kTextStyle.copyWith(color: KDarkBlue, fontSize: 25.0),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: Container(
                  width: context.width(),
                  height: context.height(),
                  decoration: const BoxDecoration(
                      color: kDarkWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      )),
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: SizedBox(
                      height: context.height(),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Row(
                              children: [
                                Expanded(child: Consumer<Cart>(
                                  builder: (context, cart, child) {
                                    return Text(
                                      'Price : ${cart.totalPrice}JOD ',
                                      style: kTextStyle.copyWith(
                                          color: KDarkBlue,
                                          fontWeight: FontWeight.bold),
                                    );
                                  },
                                )),
                                Consumer<Cart>(
                                  builder: (context, cart, child) {
                                    return Expanded(
                                      child: Container(
                                        height: 55.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          color: KSecondryHighContrast,
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Checkout',
                                            style: kTextStyle.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0),
                                          ),
                                        ),
                                      ).onTap(() {
                                        if (cart.cartItems.length >= 1) {
                                          CheckoutScreen(
                                            CartItems: cart.basketitem,
                                            kitchenName: cart.selectedKitchen,
                                          ).launch(context);
                                        } else {
                                          ScaffoldMessenger.of(context)
                                            ..hideCurrentSnackBar()
                                            ..showSnackBar(snackBarFailure);
                                        }
                                      }),
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                          //this needs work
                          // // Consumer<Cart>(builder: (context, cart, child) {
                          // //   return Text('${cart.selectedKitchen}');
                          // // }),
                          SizedBox(
                            height: context.height() + 50,
                            child: Consumer<Cart>(
                              builder: (context, cart, child) {
                                return Column(
                                  children: [
                                    SizedBox(
                                      height: context.height() + 200,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: cart.cartItems.length,
                                        itemBuilder: (context, index) {
                                          return CartItemCard(
                                              cartItem: cart.basketitem[index]);
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
