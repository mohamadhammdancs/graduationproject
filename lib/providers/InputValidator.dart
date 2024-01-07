import 'package:flutter/foundation.dart';

class InputValidator extends ChangeNotifier {
  String _email = '';
  String _password = '';
  String _userName = '';
  String _fullName = '';
  String? _emailError;
  String? _passwordError;
  String? _userNameError;
  String? _fullNameError;

  String get email => _email;

  String? get emailError => _emailError;

  String get userName => _userName;

  String? get userNameError => _userNameError;

  String get fullName => _fullName;

  String? get fullNameError => _fullNameError;

  String get password => _password;

  String? get passwordError => _passwordError;

  void updateEmail(String newEmail) {
    _email = newEmail;
    _validateEmail();
  }

  void updatePassword(String newPassword) {
    _password = newPassword;
    _validatePassword();
  }

  void updateUserName(String userName) {
    _userName = userName;
    _validateUserName();
  }

  void updateFullName(String fullName) {
    _fullName = fullName;
    _validateFullName();
  }

  void _validateEmail() {
    // Basic email validation
    if (_email.isEmpty ||
        !RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(_email)) {
      _emailError = 'Invalid email address';
    } else {
      _emailError = null;
    }
    notifyListeners();
  }

  void _validatePassword() {
    // Basic password validation (at least 4 characters)
    if (_password.isEmpty || _password.length < 4) {
      _passwordError = 'Password must be at least 4 characters';
    } else {
      _passwordError = null;
    }
    notifyListeners();
  }

  void _validateFullName() {
    // Basic input validation (at least 4 characters)
    if (_fullName.isEmpty || _fullName.length < 4) {
      _fullNameError = 'Full Name must be at least 4 characters';
    } else {
      _fullNameError = null;
    }
    notifyListeners();
  }

  void _validateUserName() {
    // Basic input validation (at least 4 characters)
    if (_userName.isEmpty || _userName.length < 4) {
      _userNameError = ' User Name must be at least 4 characters';
    } else {
      _userNameError = null;
    }
    notifyListeners();
  }
}
