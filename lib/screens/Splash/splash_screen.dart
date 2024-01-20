import 'package:flutter/material.dart';
import 'package:ggraduating_project/providers/user_provider.dart';
import 'package:ggraduating_project/screens/OnBoarding/on_board_screen.dart';
import 'package:ggraduating_project/screens/home/home.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';
import '../../utils/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 3));

    defaultBlurRadius = 10.0;
    defaultSpreadRadius = 0.5;

    finish(context);

    // get If User Already Logged In Or Not
    SharedPreferencesUtil prefs = await SharedPreferencesUtil.getInstance();
    bool? isUserLoggedIn = prefs.getBool(IS_LOGGED_IN);
    bool? isREmmemberMe = prefs.getBool(REMMEMBER_ME);

    try {
      print(
          'is remmember me = $isREmmemberMe is userlogged in = $isUserLoggedIn');
      if (isUserLoggedIn! && isREmmemberMe!) {
        // user logged In

        const Home().launch(context);
      } else {
        const OnBoard().launch(context, isNewTask: true);
      }
    } catch (ex) {
      const OnBoard().launch(context, isNewTask: true);
    }
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    // Access the UserProvider
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);
    userProvider.getUserInfo();

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(color: KMainColorr
           
              ),
        ),
        const Center(
          child: Image(image: AssetImage("images/kitchen-01.png")),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Graduating project',
                style: kTextStyle.copyWith(fontSize: 12.0, color: KDarkBlue),
              ),
              Text(
                'Version 1.0.0',
                style: kTextStyle.copyWith(
                    fontSize: 12.0, color: KSecondryHighContrast),
              ),
              const SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
