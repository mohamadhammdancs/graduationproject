import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/extension.dart';
import 'package:ggraduating_project/models/dto/UserRegistrationDto.dart';
import 'package:ggraduating_project/providers/InputValidator.dart';
import 'package:ggraduating_project/providers/user_provider.dart';
import 'package:ggraduating_project/screens/home/home.dart';
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
  final TextEditingController _phoneController = TextEditingController();
  final snackBarsuccess = SnackBar(
    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Welcome!',
      message: 'signing up Succeed!',

      /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: ContentType.success,
    ),
  );
  final snackBarFailure = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'On Snap!',
      message: 'Somthing went wrong !',
      contentType: ContentType.failure,
    ),
  );

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
                        ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 10.0, right: 10.0),
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
                        builder: (context, validator, child) {
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
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                                      errorText: validator.userNameError,
                                      labelText: 'User Name',
                                      hintText: 'User Name',
                                      border: const OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                                      errorText: validator.fullNameError,
                                      labelText: 'Full Name',
                                      hintText: 'mohamad shesha',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                                      errorText: validator.emailError,
                                      labelText: 'Email',
                                      hintText: 'example@gmail.com',
                                      border: const OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: SizedBox(
                                  height: 90,
                                  child: AppTextField(
                                    textFieldType: TextFieldType.PHONE,
                                    controller: _phoneController,
                                    enabled: true,
                                    decoration: InputDecoration(
                                      errorText: validator.phoneError,
                                      labelText: 'Phone Number',
                                      border: OutlineInputBorder(),
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        validator.updatePhoneNumber(value);
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: SizedBox(
                                  height: 90,
                                  child: AppTextField(
                                    textFieldType: TextFieldType.PASSWORD,
                                    controller: _passwordController,
                                    enabled: true,
                                    decoration: InputDecoration(
                                      errorText: validator.passwordError,
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
                                    if (validator.fullNameError.isEmptyOrNull &&
                                        validator.userNameError.isEmptyOrNull &&
                                        validator.emailError.isEmptyOrNull &&
                                        validator.passwordError.isEmptyOrNull &&
                                        validator.phoneError.isNullOrEmpty) {
                                      // all fileds are valid
                                      UserRegistrationDto userRegistrationDto =
                                          UserRegistrationDto(
                                              fullName: validator.fullName,
                                              email: validator.email,
                                              userName: validator.userName,
                                              phoneNumber:
                                                  validator.phoneNumber,
                                              password: validator.password);
                                      bool results = await userProvider
                                          .registerUser(userRegistrationDto);

                                      if (results) {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Home()),
                                        );
                                        ScaffoldMessenger.of(context)
                                          ..hideCurrentSnackBar()
                                          ..showSnackBar(snackBarsuccess);
                                      } else {
                                        ScaffoldMessenger.of(context)
                                          ..hideCurrentSnackBar()
                                          ..showSnackBar(snackBarFailure);
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
                    }),
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
