import 'package:flutter/material.dart';
import 'package:ggraduating_project/SplashScreen/on_board_screen.dart';
import 'package:ggraduating_project/constants.dart';
import 'package:nb_utils/nb_utils.dart';

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
    const OnBoard().launch(context, isNewTask: true);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(color: KMainColorr
              // image: DecorationImage(
              //   image: AssetImage("images/splashbg.png"),
              //   fit: BoxFit.cover,
              // ),
              ),
        ),
        const Center(
          child: Image(image: AssetImage("images/logo1.png")),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Graduating project',
                style: kTextStyle.copyWith(
                    fontSize: 20.0, color: KSecondryContrast),
              ),
              Text(
                'Version 1.0.0',
                style: kTextStyle.copyWith(
                    fontSize: 20.0, color: KSecondryContrast),
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
