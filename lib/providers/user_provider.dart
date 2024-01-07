import 'package:flutter/foundation.dart';

import '../models/User.dart';

class UserProvider extends ChangeNotifier {
  User? _user; // The user data

  User? get user => _user;

  // Method to update the user data
  void updateUser(User newUser) {
    _user = newUser;
    notifyListeners(); // Notify listeners that the user data has changed
  }
// Other methods or properties related to user management can be added here
}
