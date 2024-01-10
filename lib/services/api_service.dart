import 'dart:convert';
import 'package:ggraduating_project/models/dto/UpdateUserDto.dart';
import 'package:ggraduating_project/providers/user_provider.dart';
import 'package:http/http.dart' as http;
import '../models/User.dart';
import '../models/dto/UserRegistrationDto.dart';
import '../models/dto/loginDto.dart';

/// The service responsible for networking requests
class ApiService {
  static const endpoint = 'http://10.0.2.2:8080';
  var client = http.Client();
  Map<String, String> headers = {'Content-Type': 'application/json'};

  Future<User?> registerUser(UserRegistrationDto userRegistrationDto) async {
    try {
      print('api rtegister user');
      var url = Uri.parse('http://10.0.2.2:8080/api/signup');
      print(url);
      var jsonBody = jsonEncode(userRegistrationDto);
      print(jsonBody);
      var response = await client
          .post(
            url,
            body: jsonBody,
            headers: headers,
          )
          .timeout(Duration(seconds: 30));
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
      var url = Uri.parse('http://10.0.2.2:8080/api/login');
      print(url);
      var jsonBody = jsonEncode(loginDto);
      print(jsonBody);
      var response = await client.post(url, body: jsonBody, headers: headers);
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
  
Future<User?> updateUserInfo(UpdateUserDto updateUserDto) async {
    try {
      var url = Uri.parse('http://10.0.2.2:8080/api/updateinfo');
      print(url);
      var jsonBody = jsonEncode(updateUserDto);
      print(jsonBody);
      var response = await client.post(url, body: jsonBody, headers: headers);
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
