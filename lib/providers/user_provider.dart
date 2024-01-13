import 'package:flutter/foundation.dart';
import 'package:ggraduating_project/models/dto/UpdateUserDto.dart';
import 'package:ggraduating_project/models/dto/UserRegistrationDto.dart';
import 'package:ggraduating_project/models/dto/loginDto.dart';
import 'package:ggraduating_project/services/api_service.dart';
import '../models/User.dart';
import '../utils/shared_preferences.dart';
import '../utils/constants.dart' as constants;

class UserProvider extends ChangeNotifier {
  final ApiService apiService = ApiService();

  User? _user; // Nullable user to represent the current authenticated user
  bool _isLoading = false; // Loading state variable

  User? get user => _user;

  bool get isLoading => _isLoading; // Getter for loading state

  Future<bool> registerUser(UserRegistrationDto user) async {
    try {
      _setLoading(true); // set loading true before laoading the api call
      _user = await apiService.registerUser(user);

      if (_user != null) {
        SharedPreferencesUtil prefs = await SharedPreferencesUtil.getInstance();
        print('Registration Save '+_user!.toJson().toString());

        prefs.saveString(constants.USER_INFO, _user!.toJson().toString());
        prefs.saveBool(constants.IS_LOGGED_IN, true);

        notifyListeners();

        _setLoading(false);
        return true;
      } else {
        print(
            'some error acuured on tyhe backend level while registering the user');
        _setLoading(false);
        return false;
      }
    } catch (e) {
      _setLoading(false); // set loading false
      print('User provider register error $e');
      return false;
    }
  }

  //-------------------------------------------------------------

  Future<bool> signInUser(LoginDto user) async {
    try {
      print('Login user provider before setloading');
      _setLoading(true); // set loading true before laoading the api call
      _user = await apiService.login(user);
      if (_user != null) {
        // Save user IInformation in Shared Preferences
        SharedPreferencesUtil prefs = await SharedPreferencesUtil.getInstance();
        prefs.saveString(constants.USER_INFO, _user!.toJson().toString());
        prefs.saveBool(constants.IS_LOGGED_IN, true);

        notifyListeners();

        _setLoading(false);
        return true;
      } else {
        print(
            'some error acuured on tyhe backend level while loging in the user');
        _setLoading(false);
        return false;
      }
    } catch (e) {
      _setLoading(false); // set loading false
      print('User provider register error $e');
      return false;
    }
  }

  Future<bool> updateUser(UpdateUserDto user) async {
    try {
      print('Login user provider before setloading');
      _setLoading(true); // set loading true before laoading the api call
      _user = await apiService.updateUserInfo(user);
      if (_user != null) {
        notifyListeners();

        _setLoading(false);
        return true;
      } else {
        print(
            'some error acuured on tyhe backend level while loging in the user');
        _setLoading(false);
        return false;
      }
    } catch (e) {
      _setLoading(false); // set loading false
      print('User provider register error $e');
      return false;
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
