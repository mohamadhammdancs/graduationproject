import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/restaurant_data.dart';
import 'package:ggraduating_project/constants.dart';
import 'package:nb_utils/nb_utils.dart';

class BookTableCard extends StatelessWidget {
  const BookTableCard({Key? key, required this.restaurantData})
      : super(key: key);
  final RestaurantData restaurantData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Material(
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 300.0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image(
                    image: AssetImage(restaurantData.restaurantImage),
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            restaurantData.restaurantName,
                            style: kTextStyle.copyWith(
                                color: kTitleColor,
                                fontWeight: FontWeight.bold),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(
                                    Icons.location_on_outlined,
                                    color: kGreyTextColor,
                                    size: 15.0,
                                  ),
                                ),
                                TextSpan(
                                  text: restaurantData.restaurantLocation,
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: restaurantData.restaurantRatingCount,
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                                const WidgetSpan(
                                  child: SizedBox(
                                    width: 2.0,
                                  ),
                                ),
                                TextSpan(
                                  text: restaurantData.restaurantRating,
                                  style:
                                      kTextStyle.copyWith(color: kTitleColor),
                                ),
                                const WidgetSpan(
                                  child: Icon(
                                    Icons.star_border,
                                    color: KSecondryContrast,
                                    size: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 4.0, bottom: 4.0),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: KSecondryContrast,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text(
                              'Book Now',
                              style: kTextStyle.copyWith(color: Colors.white),
                            ),
                          ).onTap(() {
                            //const TableBooking().launch(context);
                          }),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
