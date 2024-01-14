import 'package:flutter/material.dart';
import 'package:ggraduating_project/models/cart_item.dart';
import 'package:ggraduating_project/utils/constants.dart';

class CheckoutItemCard extends StatelessWidget {
  const CheckoutItemCard({super.key, required this.cartItem});
  final CartItem cartItem;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                cartItem.name,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: KDarkBlue),
              ),
              const Spacer(),
              Text(
                'x${cartItem.quantity}',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  Text(
                    '${cartItem.price}',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'JOD',
                    style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 3, 70, 5)),
                  ),
                ],
              )
            ],
          ),
        ),
        const Divider(
          endIndent: 20,
          indent: 20,
          color: KDarkBlue,
        )
      ],
    );
  }
}
