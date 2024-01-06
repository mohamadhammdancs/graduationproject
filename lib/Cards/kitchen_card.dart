import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/kitchen_data.dart';
import 'package:ggraduating_project/constants.dart';

class KitchenCard extends StatelessWidget {
  const KitchenCard({Key? key, required this.kitchenData}) : super(key: key);
  final KitchenData kitchenData;

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
                    borderRadius:
                        BorderRadius.circular(15) // Adjust the radius as needed
                    ),
                child: Image(
                  image: AssetImage(kitchenData.kitchenImagePath),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    kitchenData.kitchenName,
                    style: TextStyle(
                        color: KDarkBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    kitchenData.kitchenFoodTypes.toString(),
                    style: TextStyle(fontSize: 16, color: kGreyTextColor),
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Positioned(
                      child: Row(
                    children: [
                      Text(
                        kitchenData.kitchenRating.toString(),
                        style: TextStyle(color: kGreyTextColor, fontSize: 16),
                      ),
                      const Icon(
                        Icons.star,
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
