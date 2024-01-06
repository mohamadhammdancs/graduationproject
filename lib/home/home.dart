import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ggraduating_project/constants.dart';
import 'package:ggraduating_project/home/home_screen.dart';
import 'package:ggraduating_project/screens/Checkout/cart_screen.dart';
import 'package:ggraduating_project/screens/Orders/order_screen.dart';
import 'package:ggraduating_project/screens/Profile/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );
  int _selectedItemPosition = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    OrderScreen(),
    CartScreen(),
    //OfferScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemPosition),
      bottomNavigationBar: Container(
        height: 78.0,
        decoration: BoxDecoration(
            color: KSecondryContrast, borderRadius: _borderRadius),
        child: SnakeNavigationBar.color(
          backgroundColor: KSecondryContrast,
          behaviour: SnakeBarBehaviour.floating,
          snakeShape: SnakeShape.rectangle.copyWith(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              padding: const EdgeInsets.only(left: 10.0, right: 10.0)),
          padding: const EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(borderRadius: _borderRadius),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          snakeViewColor: KSecondryHighContrast,
          unselectedItemColor: kDarkWhite,
          selectedItemColor: kDarkWhite,
          currentIndex: _selectedItemPosition,
          onTap: (index) => setState(() => _selectedItemPosition = index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.truckPickup), label: 'Order'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.wallet_giftcard_rounded), label: 'Offer'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: 'Profile')
          ],
          selectedLabelStyle: const TextStyle(fontSize: 14),
          unselectedLabelStyle: const TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
