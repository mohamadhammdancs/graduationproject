import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/kitchen_data.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:ggraduating_project/widgets/dish_details_screen.dart';
import 'package:nb_utils/nb_utils.dart';

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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 75,
                    height: 75,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: KSecondryHighContrast,
                        borderRadius: BorderRadius.circular(
                            15) // Adjust the radius as needed
                        ),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(kitchenDishesData.imagePath),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    kitchenDishesData.dishName,
                    style: const TextStyle(
                        color: KDarkBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Row(
                    children: [
                      Text(
                        '${kitchenDishesData.price}',
                        style: const TextStyle(
                            fontSize: 20, color: kGreyTextColor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'JOD',
                        style: TextStyle(
                            fontSize: 20, color: KSecondryHighContrast),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  child: const CircleAvatar(
                    backgroundColor: KSecondryContrast,
                    radius: 16.0,
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: KSecondryHighContrast,
                      size: 16.0,
                    ),
                  ).onTap(() {}),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: Row(children: [
                    Text(
                      '${kitchenDishesData.noOfOrders}',
                      style:
                          const TextStyle(color: kGreyTextColor, fontSize: 16),
                    ),
                    const Icon(
                      Icons.numbers_rounded,
                      color: Colors.amber,
                      size: 25,
                    ),
                  ]),
                )
              ],
            ),
          ],
        ),
      ),
    ).onTap(() {
      DishDetailsScreen(dishData: kitchenDishesData).launch(context);
    });
  }
}

// class KitchenDishesCards extends StatelessWidget {
//   const KitchenDishesCards({Key? key, required this.kitchenDishesData});
//   final Dish kitchenDishesData;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100,
//       child: Card(
//         color: kDarkWhite,
//         child: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 width: 75,
//                 height: 75,
//                 clipBehavior: Clip.antiAlias,
//                 decoration: BoxDecoration(
//                     color: KSecondryHighContrast,
//                     borderRadius:
//                         BorderRadius.circular(15) // Adjust the radius as needed
//                     ),
//                 child: Image(
//                   fit: BoxFit.cover,
//                   image: NetworkImage(kitchenDishesData.imagePath),
//                 ),
//               ),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Text(
//                         kitchenDishesData.dishName,
//                         style: TextStyle(
//                             color: KDarkBlue,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     const CircleAvatar(
//                       backgroundColor: KSecondryContrast,
//                       radius: 16.0,
//                       child: Icon(
//                         Icons.shopping_cart_outlined,
//                         color: KSecondryHighContrast,
//                         size: 16.0,
//                       ),
//                     ).onTap(() {}),
//                   ],
//                 ),
//                 Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       Text(
//                         '${kitchenDishesData.price}',
//                         style: TextStyle(fontSize: 20, color: kGreyTextColor),
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       Text(
//                         'JOD',
//                         style: TextStyle(
//                             fontSize: 20, color: KSecondryHighContrast),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             const Spacer(),
//             Column(
//               children: [
//                 const Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Positioned(
//                       child: Row(
//                     children: [
//                       Text(
//                         '${kitchenDishesData.noOfOrders}',
//                         style: const TextStyle(
//                             color: kGreyTextColor, fontSize: 16),
//                       ),
//                       const Icon(
//                         Icons.numbers_rounded,
//                         color: Colors.amber,
//                         size: 25,
//                       ),
//                     ],
//                   )),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     ).onTap(() {
//       DishDetailsScreen(dishData: kitchenDishesData).launch(context);
//     });
//   }
// }
