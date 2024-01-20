import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/button_global.dart';
import 'package:ggraduating_project/GlobalComponents/otp_form.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:ggraduating_project/screens/Location/location_permission.dart';
import 'package:nb_utils/nb_utils.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({Key? key}) : super(key: key);

  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: KMainColorr,
              
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.message,
                      color: KSecondryHighContrast,
                      size: 35,
                    )
                    ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10.0, right: 10.0),
                  child: SizedBox(
                      width: context.width(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Verify your mobile number',
                            style: kTextStyle.copyWith(
                                color: KSecondryHighContrast,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Enter 4-digit code sent to your mobile number',
                            style: kTextStyle.copyWith(
                              color: kGreyTextColor,
                            ),
                          ),
                          Text(
                            '+8801855671615',
                            style: kTextStyle.copyWith(
                              color: KSecondryContrast,
                            ),
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Expanded(
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
                        const SizedBox(
                          height: 40.0,
                        ),
                        const OtpForm(),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Try again in 28 seconds',
                          style: kTextStyle.copyWith(
                            color: kGreyTextColor,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ButtonGlobal(
                          buttontext: 'Continue',
                          buttonDecoration: kButtonDecoration.copyWith(
                              color: KSecondryHighContrast),
                          onPressed: () {
                            const LocationPermission().launch(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
