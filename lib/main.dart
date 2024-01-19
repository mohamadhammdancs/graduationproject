import 'package:flutter/material.dart';
import 'package:ggraduating_project/providers/cart_provider.dart';
import 'package:ggraduating_project/providers/InputValidator.dart';
import 'package:ggraduating_project/providers/favourite_kitchen_provider.dart';
import 'package:ggraduating_project/providers/user_provider.dart';
import 'package:ggraduating_project/screens/Splash/splash_screen.dart';
import 'package:ggraduating_project/utils/constants.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => InputValidator()),
        ChangeNotifierProvider(create: (context) => Cart()),
        ChangeNotifierProvider(
            create: (context) => FavouriteKitchensProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: KMainColorr),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          }),
        ),
        title: 'graduating project',
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
        },
      ),
    );
  }
}
