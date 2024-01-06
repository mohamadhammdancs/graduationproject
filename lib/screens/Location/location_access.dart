import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/button_global.dart';
import 'package:ggraduating_project/constants.dart';
import 'package:ggraduating_project/home/home.dart';

import 'package:nb_utils/nb_utils.dart';

class LocationAccess extends StatefulWidget {
  const LocationAccess({Key? key}) : super(key: key);

  @override
  _LocationAccessState createState() => _LocationAccessState();
}

class _LocationAccessState extends State<LocationAccess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(color: KMainColorr
                  // image: DecorationImage(
                  //   image: AssetImage("images/authbg.png"),
                  //   fit: BoxFit.cover,
                  // ),
                  ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: KDarkBlue,
                    ),
                  ),
                ),
                Expanded(
                  child: AppTextField(
                    textFieldType: TextFieldType.ADDRESS,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: 'Enter Your Location',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Icon(
                    Icons.cancel_outlined,
                    color: KDarkBlue,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.location_searching,
                    color: KDarkBlue,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80.0,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                      image: DecorationImage(
                        image: AssetImage("images/mapbig.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 70.0,
                  child: ButtonGlobal(
                      buttontext: 'Confirm',
                      buttonDecoration: kButtonDecoration.copyWith(
                          color: KSecondryHighContrast),
                      onPressed: () {
                        const Home().launch(context);
                      })),
            )
          ],
        ),
      ),
    );
  }
}
