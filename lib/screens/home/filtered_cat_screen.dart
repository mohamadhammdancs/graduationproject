import 'package:flutter/material.dart';
import 'package:ggraduating_project/models/kitchen_data.dart';
import 'package:ggraduating_project/screens/home/kitchen_details.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:ggraduating_project/widgets/kitchen_card.dart';
import 'package:nb_utils/nb_utils.dart';

class filteredKitchenScreen extends StatelessWidget {
  const filteredKitchenScreen({super.key, required this.filterType});
  final FoodType filterType;
  @override
  Widget build(BuildContext context) {
    List<KitchenData> filteredKitchenList = List.empty(growable: true);

    for (KitchenData kitchendata in kitchenList) {
      if (kitchendata.kitchenFoodType == filterType) {
        filteredKitchenList.add(kitchendata);
      }
    }

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(color: KMainColorr
                   
                    ),
              ),
              Column(
                children: [
                  Row(
                    children: [
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
                        filterType.name.toString(),
                        style: kTextStyle.copyWith(
                            color: KDarkBlue, fontSize: 18.0),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        width: context.width(),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: context.height() + 250,
                                child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: filteredKitchenList.length,
                                    itemBuilder: (_, n) {
                                      return KitchenCard(
                                              kitchenData:
                                                  filteredKitchenList[n])
                                          .onTap(() {
                                        KitchenDetails(
                                          kitchen: filteredKitchenList[n],
                                        ).launch(context);
                                      });
                                    }),
                              ),
                            )
                          
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
