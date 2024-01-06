import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/button_global.dart';
import 'package:ggraduating_project/constants.dart';
import 'package:ggraduating_project/screens/Authentication/phone_verification.dart';
import 'package:ggraduating_project/utils/validator_utl.dart';
import 'package:nb_utils/nb_utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  bool _validateUserName = true;
  bool _validatePassword = true;
  bool _validateFullName = true;
  bool _validateEmail = true;

  void _onSignupPressed() {
    String? usernameError =
        ValidatorUtil.validateUsername(_usernameController.text);
    String? passwordError =
        ValidatorUtil.validatePassword(_passwordController.text);
    String? fullNameError =
        ValidatorUtil.validateFullName(_fullNameController.text);
    String? emailError = ValidatorUtil.validateEmail(_emailController.text);

    if (usernameError == null &&
        passwordError == null &&
        fullNameError == null &&
        emailError == null) {
      // Perform the login or registration logic here.
      print('Username and password are valid. Perform the login logic.');
    } else {
      // Handle validation errors.
      print('Validation Error: $usernameError, $passwordError');
      _validateUserName = false;
      _validatePassword = false;
      _validateFullName = false;
      _validateEmail = false;
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
                  height: 20.0,
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
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: SizedBox(
                            height: 90.0,
                            child: AppTextField(
                              textFieldType: TextFieldType.USERNAME,
                              controller: _usernameController,
                              enabled: true,
                              onChanged: (value) {
                                setState(() {
                                  _onSignupPressed();
                                });
                              },
                              decoration: InputDecoration(
                                errorText: _validateUserName
                                    ? "Value Can't Be Empty"
                                    : null,
                                labelText: 'User Name',
                                hintText: 'User Name',
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: SizedBox(
                            height: 90,
                            child: AppTextField(
                              textFieldType: TextFieldType.NAME,
                              controller: _fullNameController,
                              enabled: true,
                              onChanged: (value) {
                                setState(() {
                                  _onSignupPressed();
                                });
                              },
                              decoration: InputDecoration(
                                errorText: _validateFullName
                                    ? "Value Can't Be Empty"
                                    : null,
                                labelText: 'Full Name',
                                hintText: 'mohamad shesha',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: SizedBox(
                            height: 90.0,
                            child: AppTextField(
                              textFieldType: TextFieldType.EMAIL,
                              controller: _emailController,
                              enabled: true,
                              onChanged: (value) {
                                setState(() {
                                  _onSignupPressed();
                                });
                              },
                              decoration: InputDecoration(
                                errorText: _validateUserName
                                    ? "Value Can't Be Empty"
                                    : null,
                                labelText: 'Email',
                                hintText: 'example@gmail.com',
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: SizedBox(
                            height: 90,
                            child: AppTextField(
                              textFieldType: TextFieldType.PASSWORD,
                              controller: _passwordController,
                              enabled: true,
                              decoration: InputDecoration(
                                errorText: _validatePassword
                                    ? "Value Can't Be Empty"
                                    : null,
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _onSignupPressed();
                                });
                              },
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
