import 'package:flutter/foundation.dart';
import 'package:ggraduating_project/models/dto/UserRegistrationDto.dart';
import 'package:ggraduating_project/models/dto/loginDto.dart';
import 'package:ggraduating_project/services/api_service.dart';
import '../models/User.dart';

class UserProvider extends ChangeNotifier {
  final ApiService apiService = ApiService();
  User? _user; // Nullable user to represent the current authenticated user
  bool _isLoading = false; // Loading state variable

  User? get user => _user;
  bool get isLoading => _isLoading; // Getter for loading state

  Future<bool> registerUser(UserRegistrationDto user) async {
    try {
      print('register user provider before setloading');
      _setLoading(true); // set loading true before laoading the api call
      _user = await apiService.registerUser(user);
      if (_user != null) {
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
