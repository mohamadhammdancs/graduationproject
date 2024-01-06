import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/button_global.dart';
import 'package:ggraduating_project/constants.dart';
import 'package:ggraduating_project/screens/Authentication/phone_verification.dart';
import 'package:nb_utils/nb_utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.message,
                      color: KSecondryHighContrast,
                      size: 35,
                    )
                    //Image.asset('images/messageicon.png'),
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
                            'Let’s get you started',
                            style: kTextStyle.copyWith(
                                color: KSecondryHighContrast,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'First, Create your Neihbour\'s Kitchen account',
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
                                labelText: 'User Name',
                                hintText: '1767 432556',
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            decoration: const InputDecoration(
                              labelText: 'Full Name',
                              hintText: 'Prince mahmud',
                              border: OutlineInputBorder(),
                            ),
                          ),
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
                                labelText: 'Email',
                                hintText: 'example@gmail.com',
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: AppTextField(
                            textFieldType: TextFieldType.PASSWORD,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        ButtonGlobal(
                          buttontext: 'Continue',
                          buttonDecoration: kButtonDecoration.copyWith(
                              color: KSecondryHighContrast),
                          onPressed: () {
                            const PhoneVerification().launch(context);
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
