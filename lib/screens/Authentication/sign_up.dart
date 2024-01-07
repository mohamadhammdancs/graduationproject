import 'package:flutter/material.dart';
import 'package:ggraduating_project/GlobalComponents/button_global.dart';
import 'package:ggraduating_project/providers/InputValidator.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

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
                Consumer<InputValidator>(
                builder: (context, validator, child){
                  return Expanded(
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
                                  validator.updateUserName(value);
                                },
                                decoration: InputDecoration(
                                  errorText:validator.userNameError,
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
                                  validator.updateFullName(value);
                                },
                                decoration: InputDecoration(
                                  errorText:validator.fullNameError,
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
                                    validator.updateEmail(value);
                                  });
                                },
                                decoration: InputDecoration(
                                  errorText:validator.emailError,
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
                                  errorText:validator.passwordError,
                                  labelText: 'Password',
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    validator.updatePassword(value);
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
                              if (validator.fullNameError.isEmptyOrNull &&
                                  validator.userNameError.isEmptyOrNull &&
                                  validator.emailError.isEmptyOrNull &&
                                  validator.passwordError.isEmptyOrNull) {
                                // all fileds are valid my man

                                print('the valid fileds are username =  ${validator.userName} \n fullName =  ${validator.fullName} \n email =  ${validator.email} \n  password =  ${validator.password}');
                              }


                              // const PhoneVerification().launch(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
