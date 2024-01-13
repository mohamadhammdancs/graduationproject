import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

enum RequestStatus { initial, loading, success, error }

class ApiProvider<T> with ChangeNotifier {
  RequestStatus _status = RequestStatus.initial;
  T? _data;
  String? _error;

  RequestStatus get status => _status;

  T? get data => _data;

  String? get error => _error;

  Future<void> fetchData(String apiUrl, {Map<String, String>? headers}) async {
    try {
      _status = RequestStatus.loading;
      notifyListeners();

      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        // Parse the JSON response and update the data
        _data = json.decode(response.body);
        _status = RequestStatus.success;
      } else {
        // Handle API error
        _error = 'Failed to load data: ${response.statusCode}';
        _status = RequestStatus.error;
      }
    } catch (e) {
      // Handle general exceptions
      _error = 'Error: $e';
      _status = RequestStatus.error;
    } finally {
      notifyListeners();
    }
  }

  Future<void> postData(String apiUrl,
      {Map<String, String>? bodyParams}) async {
    try {
      _status = RequestStatus.loading;
      notifyListeners();

      final response = await http.post(Uri.parse(apiUrl), body: bodyParams);

      if (response.statusCode == 200) {
        // Parse the JSON response and update the data
        final Map<String, dynamic> responseData = json.decode(response.body);

        // Check if the response is successful based on your API structure
        if (responseData['success']) {
          // The request was successful, you can access the data here
          _data = responseData['data'];
          _status = RequestStatus.success;

          print("Request successful: $data");
        } else {
          // The server returned an error
          _error = responseData['message'];
          _status = RequestStatus.error;
        }
      } else {
        // Handle API error
        _error = 'Failed to load data: ${response.statusCode}';
        _status = RequestStatus.error;
      }
    } catch (e) {
      // Handle general exceptions
      _error = 'Error: $e';
      _status = RequestStatus.error;
    } finally {
      notifyListeners();
    }
  }

}
