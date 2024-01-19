import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/product_data.dart';
import 'package:ggraduating_project/models/kitchen_data.dart';
import 'package:ggraduating_project/providers/favourite_kitchen_provider.dart';
import 'package:ggraduating_project/screens/home/kitchen_details.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:ggraduating_project/widgets/kitchen_card.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import '../../widgets/daily_dish_card.dart';
import '../home/daily_dish_details.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    final faviroute = Provider.of<FavouriteKitchensProvider>(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: KMainColorr,
        body: Stack(
          children: [
            Column(children: [
              Row(                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Icon(
                            Icons.arrow_back,
                            color: KDarkBlue,
                    ).onTap(() {
                      Navigator.pop(context);
                    }),
                  ),
                  Text(
                    'Favourite',
                    style:
                        kTextStyle.copyWith(color: KDarkBlue, fontSize: 18.0),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                decoration: BoxDecoration(color: kDarkWhite),
                height: context.height() - 150,
                child: ListView.builder(
                    itemCount: faviroute.favouriteKitchens.length,
                    itemBuilder: (_, n) {
                      return KitchenCard(kitchenData: kitchenList[n]).onTap(() {
                        KitchenDetails(kitchen: kitchenList[n]).launch(context);
                      }, highlightColor: context.cardColor);
                    }),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
