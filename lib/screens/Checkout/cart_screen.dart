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
                      itemCount: cart.basketitem.length,
                      itemBuilder: (_, n) {
                        return CartItemCard(cartItem: cart.basketitem[n]);
                      });
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
