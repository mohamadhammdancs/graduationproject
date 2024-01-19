import 'package:flutter/foundation.dart';
import 'package:ggraduating_project/utils/shared_preferences.dart';
import '../utils/constants.dart' as constants;

class InputValidator extends ChangeNotifier {
  String _email = '';
  String _password = '';
  String _userName = '';
  String _fullName = '';
  String _phoneNumber = '';
  String _address = '';
  String? _emailError;
  String? _passwordError;
  String? _userNameError;
  String? _fullNameError;
  String? _phoneNumberError;
  String? _addressError;
  bool _isRememberMe = false;

  bool get isRememberMe => _isRememberMe;
  String get email => _email;

  String? get emailError => _emailError;

  String get userName => _userName;

  String? get userNameError => _userNameError;

  String get fullName => _fullName;

  String? get fullNameError => _fullNameError;

  String get password => _password;

  String? get passwordError => _passwordError;

  String get phoneNumber => _phoneNumber;

  String? get phoneError => _phoneNumberError;

  String? get address => _address;

  String? get addressError => _addressError;
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

  void updatePhoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
    _validatePhoneNumber();
  }

  void updateAddress(String address) {
    _address = address;
    _validateAddress();
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

  void _validatePhoneNumber() {

    RegExp regExp = RegExp(
      r'^\d{10}$', // Example: Allows exactly 10 digits
    );

    bool isValidPhoneNumber = regExp.hasMatch(_phoneNumber);

    if (_phoneNumber.isEmpty || !isValidPhoneNumber) {
      _phoneNumberError = ' Phone Number must be at least 10 Numbers';
    } else {
      _phoneNumberError = null;
    }

    notifyListeners();
  }

  void _validateAddress() {
    if (_address.isEmpty || _address.length < 5) {
      _addressError = ' please enter your Address';
    } else {
      _addressError = null;
    }
    notifyListeners();
  }

  void setRemmemberme(bool value) async {
    print('set remmember me $value');
    SharedPreferencesUtil prefs = await SharedPreferencesUtil.getInstance();
    prefs.saveBool(constants.REMMEMBER_ME, value);

    notifyListeners();
  }

  Future<void> toggleRememberMe(bool value) async {
    print('toggle value = $value');
    SharedPreferencesUtil prefs = await SharedPreferencesUtil.getInstance();
    _isRememberMe = value;
    await prefs.saveBool(constants.REMMEMBER_ME, value);
    notifyListeners();
  }
}
