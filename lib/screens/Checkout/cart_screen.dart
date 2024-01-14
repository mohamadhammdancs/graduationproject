import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/kitchen_data.dart';
import 'package:ggraduating_project/models/cart.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:ggraduating_project/screens/Checkout/checkout_screen.dart';
import 'package:ggraduating_project/widgets/cart_item_card.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';
import 'package:ggraduating_project/models/cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, this.CartItems});
  final List<Dish>? CartItems;

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // int quantity = 1;
  late double TotalPrice;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                                    '${cart.totalPrice} JOD',
                                    style: kTextStyle.copyWith(
                                        color: kTitleColor,
                                        fontWeight: FontWeight.bold),
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
                                  const CheckoutScreen().launch(context);
                                }),
                              ),
                            ],
                          ),
                        ),
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
            SizedBox(
              height: 1,
            )
          ]),
        ),
      ),
    );
  }
}

/*
Expanded(child: Consumer<Cart>(
                  builder: (context, cart, child) {
                    return Text(
                      '${cart.totalPrice} JOD',
                      style: kTextStyle.copyWith(
                          color: kTitleColor, fontWeight: FontWeight.bold),
                    );
                  },
                )),
*/

/*


        bottomNavigationBar: Card(
          elevation: 0.0,
          color: const Color(0xFFF5F5F5),
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
                    return Text(
                      '${cart.totalPrice} JOD',
                      style: kTextStyle.copyWith(
                          color: kTitleColor, fontWeight: FontWeight.bold),
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
                    const CheckoutScreen().launch(context);
                  }),
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(color: KMainColorr),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Cart',
                        style: kTextStyle.copyWith(
                            color: KDarkBlue, fontSize: 25.0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Consumer<Cart>(builder: (context, cart, child) {
                  return ListView.builder(
                      itemCount: cart.cartItems.length,
                      itemBuilder: (_, n) {
                        return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                    color: kGreyTextColor.withOpacity(0.1)),
                              ),
                              child: Row(
                                children: [
                                  Image(
                                    image: NetworkImage(
                                        cart.cartItems[n].imagePath),
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
                                        cart.cartItems[n].dishName,
                                        style: kTextStyle.copyWith(
                                            color: KSecondryHighContrast,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '\$${cart.cartItems[n].price}',
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
                                            padding: const EdgeInsets.all(4.0),
                                            decoration: BoxDecoration(
                                              color:
                                                  KSecondryContrast.withOpacity(
                                                      0.1),
                                              borderRadius:
                                                  BorderRadius.circular(1.0),
                                            ),
                                            child: Text(
                                              'Confirmed',
                                              style: kTextStyle.copyWith(
                                                  color: KSecondryHighContrast,
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
                            ) //.onTap(() {
                            //   const OrderDetails().launch(context);
                            // }),
                            );
                      });
                })
              ],
            ),
          ],
        ),

*/
