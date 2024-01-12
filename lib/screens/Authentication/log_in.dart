import 'package:flutter/material.dart';
import 'package:ggraduating_project/models/dto/loginDto.dart';
import 'package:ggraduating_project/providers/user_provider.dart';
import 'package:ggraduating_project/screens/home/home.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import '../../providers/InputValidator.dart';
import '../../utils/constants.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController _suerNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          reverse: true,
          child: SizedBox(
            height: context.height(),
            width: context.width(),
            child: Stack(
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
                        child: const Icon(
                          Icons.arrow_back,
                          color: KDarkBlue,
                        ),
                      ),
                    ),
                    const Padding(
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
                    Consumer<InputValidator>(
                      builder: (context, validator, child) {
                        return Expanded(
                          child: Container(
                            width: context.width(),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0),
                              ),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 40.0,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  child: SizedBox(
                                    height: 90.0,
                                    child: AppTextField(
                                      textFieldType: TextFieldType.USERNAME,
                                      controller: _suerNameController,
                                      // Provide the controller with the current username value
                                      enabled: true,
                                      onChanged: (value) {
                                        validator.updateUserName(value);
                                      },
                                      decoration: InputDecoration(
                                        errorText: validator.userNameError,
                                        labelText: 'UserName',
                                        hintText: 'Username',
                                        border: const OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: SizedBox(
                                    height: 90,
                                    child: AppTextField(
                                      textFieldType: TextFieldType.PASSWORD,
                                      controller: _passwordController,
                                      // Provide the controller with the current password value
                                      enabled: true,
                                      onChanged: (value) {
                                        validator.updatePassword(value);
                                      },
                                      decoration: InputDecoration(
                                        errorText: validator.passwordError,
                                        labelText: 'Password',
                                        hintText: '*********',
                                        border: const OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 5, 40, 0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      textStyle: TextStyle(fontSize: 24),
                                      minimumSize: Size.fromHeight(60),
                                      shape: StadiumBorder(),
                                      backgroundColor: KSecondryHighContrast,
                                    ),
                                    onPressed: () async {
                                      if (validator
                                              .userNameError.isEmptyOrNull &&
                                          validator
                                              .passwordError.isEmptyOrNull) {
                                        // all fileds are valid my man
                                        LoginDto loginToDto = LoginDto(
                                            username: validator.userName,
                                            password: validator.password);
                                        bool results = await userProvider
                                            .signInUser(loginToDto);

                                        if (results) {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Home()),
                                          );
                                        } else {
                                          print(
                                              'an error acured while registering user');
                                        }
                                      }
                                    },
                                    child: userProvider.isLoading
                                        ? CircularProgressIndicator()
                                        : Text(
                                            'Submit',
                                            style: TextStyle(color: kDarkWhite),
                                          ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
