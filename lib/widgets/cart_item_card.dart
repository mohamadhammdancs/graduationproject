import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/kitchen_data.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({super.key, required this.cartItem});
  final Dish cartItem;

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: context.width(),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: kGreyTextColor.withOpacity(0.2)),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.cartItem.dishName,
                        style: kTextStyle.copyWith(color: kTitleColor),
                      ),
                      Text(
                        widget.cartItem.price as String,
                        style: kTextStyle.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            quantity > 1 ? quantity -= 1 : quantity = 1;
                          });
                        },
                        child: const Icon(
                          Icons.remove,
                          color: kTitleColor,
                        ),
                      ),
                      Text(
                        quantity.toString(),
                        style: kTextStyle.copyWith(color: kTitleColor),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            quantity > 0 ? quantity += 1 : quantity = 1;
                          });
                        },
                        child: const Icon(
                          Icons.add,
                          color: kTitleColor,
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
    );
  }
}
