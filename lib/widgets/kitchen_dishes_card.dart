import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/kitchen_data.dart';
import 'package:ggraduating_project/utils/constants.dart';

class KitchenDishesCards extends StatelessWidget {
  const KitchenDishesCards({Key? key, required this.kitchenDishesData});
  final Dish kitchenDishesData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        color: kDarkWhite,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 75,
                height: 75,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: KSecondryHighContrast,
                    borderRadius:
                        BorderRadius.circular(15) // Adjust the radius as needed
                    ),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(kitchenDishesData.imagePath),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    kitchenDishesData.dishName,
                    style: TextStyle(
                        color: KDarkBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        '${kitchenDishesData.price}',
                        style: TextStyle(fontSize: 20, color: kGreyTextColor),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'JOD',
                        style: TextStyle(
                            fontSize: 20, color: KSecondryHighContrast),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Positioned(
                      child: Row(
                    children: [
                      Text(
                        '${kitchenDishesData.noOfOrders}',
                        style: const TextStyle(
                            color: kGreyTextColor, fontSize: 16),
                      ),
                      const Icon(
                        Icons.numbers_rounded,
                        color: Colors.amber,
                        size: 25,
                      ),
                    ],
                  )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}