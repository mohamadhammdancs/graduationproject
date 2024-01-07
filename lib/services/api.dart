import 'dart:convert';
import 'package:ggraduating_project/providers/user_provider.dart';
import 'package:http/http.dart' as http;

import '../models/User.dart';
import '../models/dto/UserRegistrationDto.dart';
import '../models/dto/loginDto.dart';

/// The service responsible for networking requests
class Api {
  static const endpoint = 'https://localhost:8080/api';

  var client = http.Client();

  Future<User?> registerUser(UserRegistrationDto userRegistrationDto) async {
    try {
      var url = Uri.https(endpoint, '/signup');
      var jsonBody = userRegistrationDto.toJson();
      var response = await client.post(url, body: jsonBody);
      // Convert and return

      if (response.statusCode == 200) {
        // If the server returns a 200 OK response, parse the response
        final Map<String, dynamic> responseData = json.decode(response.body);

        // Check if the response is successful based on your API structure
        if (responseData['success']) {
          // The request was successful, you can access the data here
          dynamic data = responseData['data'];
          print("Request successful: $data");
          return User.fromJson(data);
        } else {
          // The server returned an error
          String errorMessage = responseData['message'];
          print("Request failed: $errorMessage");
        }
      }
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }

  Future<User?> login(LoginDto loginDto) async {
    try {
      var url = Uri.https(endpoint, '/login');
      var jsonBody = loginDto.toJson();
      var response = await client.post(url, body: jsonBody);
      // Convert and return

      if (response.statusCode == 200) {
        // If the server returns a 200 OK response, parse the response
        final Map<String, dynamic> responseData = json.decode(response.body);

        // Check if the response is successful based on your API structure
        if (responseData['success']) {
          // The request was successful, you can access the data here
          dynamic data = responseData['data'];
          print("Request successful: $data");

          return User.fromJson(data);
        } else {
          // The server returned an error
          String errorMessage = responseData['message'];
          print("Request failed: $errorMessage");
        }
      }
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }

}
