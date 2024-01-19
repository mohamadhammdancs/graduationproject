// import 'package:flutter/material.dart';
// import 'package:ggraduating_project/models/User.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPreferencesProvider extends ChangeNotifier {
//   late User _userData;

//   User get userData => _userData;

//   SharedPreferencesProvider() {
//     loadSharedPreferencesData();
//   }

//   Future<void> loadSharedPreferencesData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();

//     // Load user data from SharedPreferences
//     String username = prefs.getString('username') ?? 'Guest';
//     String email = prefs.getString('email') ?? '';

//     _userData = User(username: username, email: email);
//     notifyListeners();
//   }

//   Future<void> updateUserData(User newUser) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();

//     // Save user data to SharedPreferences
//     await prefs.setString('username', newUser.username);
//     await prefs.setString('email', newUser.email);

//     _userData = newUser;
//     notifyListeners();
// }


// }