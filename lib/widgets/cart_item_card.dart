import 'package:flutter/material.dart';
import 'package:ggraduating_project/models/cart.dart';
import 'package:ggraduating_project/models/cart_item.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({super.key, required this.cartItem});
  final CartItem cartItem;

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: context.width(),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        // color: KMainColorr,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: kGreyTextColor.withOpacity(0.2)),
                  color: kDarkWhite),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Image(
                        image: NetworkImage(widget.cartItem.dish.imagePath),
                        height: 70.0,
                        width: 70.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          widget.cartItem.dish.dishName,
                          style: kTextStyle.copyWith(
                            color: KDarkBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          '${widget.cartItem.price} JOD',
                          style: kTextStyle.copyWith(
                            color: KDarkBlue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Consumer<Cart>(
                    builder: (context, cart, child) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 5),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  cart.addQuantity(widget.cartItem, false);
                                });
                              },
                              child: const CircleAvatar(
                                backgroundColor: KSecondryContrast,
                                radius: 13,
                                child: Icon(
                                  Icons.remove,
                                  color: KDarkBlue,
                                ),
                              ),
                            ),
                            Text(
                              widget.cartItem.quantity.toString(),
                              style: kTextStyle.copyWith(
                                  color: kTitleColor, fontSize: 15),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  // here to do change on the cart item
                                  cart.addQuantity(widget.cartItem, true);
                                });
                              },
                              child: const CircleAvatar(
                                backgroundColor: KSecondryContrast,
                                radius: 13,
                                child: Icon(
                                  Icons.add,
                                  color: KDarkBlue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  )

                  // Icon(Icons.delete).onTap(() {})
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
