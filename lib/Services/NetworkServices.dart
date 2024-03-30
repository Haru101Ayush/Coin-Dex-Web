import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkService {

  static const String baseUrl = "https://api.coingecko.com";
  final String? apiKey = 'CG-N4ThuiuAoVC1epyJvx95udhP';

  Future<Map<String, dynamic>> postRequest(String endpoint, Map<String, dynamic> body) async {

    print('the key is $apiKey');
    final String url = baseUrl + endpoint;
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      // Handle exceptions
      print("Exception: $e");
      throw Exception('Failed to make API request');
    }
  }

  Future<Map<String, dynamic>> postRequest_null(String endpoint) async {
    final String url = baseUrl + endpoint;
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: headers,
      );
      return _handleResponse(response);
    } catch (e) {
      // Handle exceptions
      print("Exception: $e");
      throw Exception('Failed to make API request');
    }
  }

  Future<dynamic> get(String endpoint) async {
    try {
      final String url = baseUrl + endpoint;
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $apiKey',
        },
      );
      return _handleResponse(response);
    } catch (e) {
      // An error occurred
      print('Error: $e');
    }
  }

  Future<dynamic> Delete(String endpoint) async {
    try {
      final String url = baseUrl + endpoint;
      final response = await http.delete(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $apiKey',
        },
      );
      return _handleResponse(response);
    } catch (e) {
      // An error occurred
      print('Error: $e');
    }
  }

  static dynamic _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      // Successful request, parse the response
      Map<String, dynamic> responseData = jsonDecode(response.body);
      return responseData;
    } else {
      // Handle error
      print("Error: ${response.statusCode}");
      print("Response: ${response.body}");
      throw Exception('Failed to make API request');
    }
  }
}
