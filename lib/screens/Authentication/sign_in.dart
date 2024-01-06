import 'package:flutter/material.dart';
import 'package:ggraduating_project/constants.dart';
import 'package:ggraduating_project/screens/Authentication/log_in.dart';
import 'package:ggraduating_project/screens/Authentication/sign_up.dart';
import 'package:nb_utils/nb_utils.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: KMainColorr,
                // image: DecorationImage(
                //   image: AssetImage("images/authbg.png"),
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                  child: SizedBox(
                      width: context.width() / 2,
                      child: Text(
                        'Sign Up & Log In to Neighbor\'s Kitchen',
                        style: kTextStyle.copyWith(
                            color: KSecondryHighContrast,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
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
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: context.width(),
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: kDarkWhite,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color:
                                      KSecondryHighContrast.withOpacity(0.2)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'Log In',
                                  style:
                                      kTextStyle.copyWith(color: kTitleColor),
                                ),
                              ],
                            ).onTap(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LogIn()));
                            }),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 10.0),
                          child: Container(
                            width: context.width(),
                            height: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: KSecondryHighContrast,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'Sign Up',
                                  style:
                                      kTextStyle.copyWith(color: Colors.white),
                                ),
                              ],
                            ).onTap(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            }),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(
                                thickness: 1.0,
                                color: kGreyTextColor.withOpacity(0.3),
                              ),
                            )),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'By continuing, you agree to our  ',
                              style: kTextStyle.copyWith(color: kGreyTextColor),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Terms & conditions',
                                    style: kTextStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: KDarkBlue)),
                                TextSpan(
                                  text: '  and ',
                                  style:
                                      kTextStyle.copyWith(color: kTitleColor),
                                ),
                                TextSpan(
                                    text: 'Privacy Policy',
                                    style: kTextStyle.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: KDarkBlue)),
                              ],
                            ),
                          ),
                        )
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
