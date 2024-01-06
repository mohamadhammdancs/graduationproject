import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/button_global.dart';
import 'package:ggraduating_project/constants.dart';
import 'package:ggraduating_project/screens/Authentication/phone_verification.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../utils/validator_utl.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _validateUserName = true;
  bool _validatePassword = true;

  void _onLoginPressed() {
    String? usernameError =
        ValidatorUtil.validateUsername(_usernameController.text);
    String? passwordError =
        ValidatorUtil.validatePassword(_passwordController.text);

    if (usernameError == null && passwordError == null) {
      // Perform the login or registration logic here.
      print('Username and password are valid. Perform the login logic.');
    } else {
      // Handle validation errors.
      print('Validation Error: $usernameError, $passwordError');
      _validateUserName = false;
      _validatePassword = false;
    }
  }

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
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 10.0, right: 10.0, bottom: 10),
                  child: SizedBox(
                      width: context.width(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Log In',
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
                    // height: 40.0,
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: SizedBox(
                            height: 90.0,
                            child: AppTextField(
                              textFieldType: TextFieldType.USERNAME,
                              controller: _usernameController,
                              enabled: true,
                              validator: (value) =>
                                  ValidatorUtil.validateUsername(value),
                              onChanged: (value) {
                                setState(() {
                                  _onLoginPressed();
                                });
                              },
                              decoration: InputDecoration(
                                errorText: _validateUserName
                                    ? "Value Can't Be Empty"
                                    : null,
                                labelText: 'Email',
                                hintText: 'example@example.com',
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: SizedBox(
                            height: 90,
                            child: AppTextField(
                              textFieldType: TextFieldType.PASSWORD,
                              controller: _passwordController,
                              enabled: true,
                              validator: (value) =>
                                  ValidatorUtil.validatePassword(value),
                              onChanged: (value) {
                                setState(() {
                                  _onLoginPressed();
                                });
                              },
                              decoration: InputDecoration(
                                errorText: _validatePassword
                                    ? "Value Can't Be Empty"
                                    : null,
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        ButtonGlobal(
                          buttontext: 'Log in',
                          buttonDecoration: kButtonDecoration.copyWith(
                              color: KSecondryHighContrast),
                          onPressed: () {
                            _onLoginPressed();
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
    ;
  }
}
