import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/button_global.dart';
import 'package:ggraduating_project/constants.dart';
import 'package:ggraduating_project/screens/Authentication/sign_up.dart';
import 'package:nb_utils/nb_utils.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({Key? key}) : super(key: key);

  @override
  _PhoneAuthState createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.phone,
                    color: KSecondryHighContrast,
                    size: 35,
                  ),
                  //Image.asset('images/phoneicon.png'),
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
                            'What’s your Phone Number',
                            style: kTextStyle.copyWith(
                                color: KSecondryHighContrast,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'We’ll check if you have an account',
                            style: kTextStyle.copyWith(
                              color: kGreyTextColor,
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
                          height: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            height: 60.0,
                            child: AppTextField(
                              textFieldType: TextFieldType.PHONE,
                              controller: TextEditingController(),
                              enabled: true,
                              onChanged: (value) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                hintText: '1767 432556',
                                border: const OutlineInputBorder(),
                                prefix: CountryCodePicker(
                                  padding: EdgeInsets.zero,
                                  onChanged: print,
                                  initialSelection: 'BD',
                                  showFlag: true,
                                  showDropDownButton: true,
                                  alignLeft: false,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ButtonGlobal(
                          buttontext: 'Continue',
                          buttonDecoration: kButtonDecoration.copyWith(
                              color: KSecondryHighContrast),
                          onPressed: () {
                            const SignUp().launch(context);
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
