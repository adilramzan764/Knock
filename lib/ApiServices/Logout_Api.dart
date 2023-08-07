import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:knock/Models/LogoutModel.dart';

import '../Models/LoginModel.dart';
import '../const.dart';
// import '../path_to_user_response_login.dart'; // Import the correct path for your model

class LogoutApi {
  static Future<UserResponseLogout> logout() async {
    const String URL = "${baseUrl}logout"; // Replace 'baseUrl' with your actual base URL.

    final response = await http.post(
      Uri.parse(URL),
      headers: {"Content-Type": "application/json"},
    );

    if (response.statusCode == 200) {
      try {
        final jsonData = json.decode(response.body);
        final userResponseLogout = UserResponseLogout.fromJson(jsonData);
        print("Logout");

        return userResponseLogout;
      } catch (e) {
        throw Exception("Failed to parse response");
      }
    } else {
      throw Exception("An error occurred");
    }
  }
}
