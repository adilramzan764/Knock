import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/LoginModel.dart';
import '../const.dart';

class ApiServicesForLogIn {
  static Future<UserResponseLogin> login(String email, String password) async {
    const String URL = "${baseUrl}login"; // Replace 'baseUrl' with your actual base URL.
    Map<String, dynamic> body = {
      'email': email,
      'password': password,
    };
    print(body);
    final response = await http.post(
      Uri.parse(URL),
      body: json.encode(body),
      headers: {"Content-Type": "application/json"},
    );
    print(response.body);
    final String res = response.body;

    if (res.isNotEmpty) {
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        return UserResponseLogin.fromJson(jsonData);
      } catch (e) {
        throw Exception("Failed to parse response");
      }
    }
    else if (response.statusCode == 200) {
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        final userResponseLogin = UserResponseLogin.fromJson(jsonData);

        return userResponseLogin;
      } catch (e) {
        throw Exception("Failed to parse response");
      }
    }

    else if (response.statusCode == 400) {
      try {
        final jsonData = json.decode(res) as Map<String, dynamic>;
        final userResponseLogin = UserResponseLogin.fromJson(jsonData);

        return userResponseLogin;
      } catch (e) {
        throw Exception("Failed to parse response");
      }
    } else {
      throw Exception("An error occurred");
    }
  }
}
