import 'dart:convert';

import 'package:knock/Models/DeleteUserModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../const.dart';
import 'package:http/http.dart' as http;

class DeleteAccount_ApiService{
  static Future<DeleteUserModel> delaccount() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
      String id = prefs.getString("id").toString();

     String URL = "${baseUrl}deleteUserById/$id"; // Replace 'baseUrl' with your actual base URL.

    final response = await http.delete(
      Uri.parse(URL),

      headers: {"Content-Type": "application/json"},
    );
    print(response.body);
    final String res = response.body;

    if (response.statusCode == 200) {
      prefs.clear();
      final jsonData = json.decode(response.body) as Map<String, dynamic>;
      return DeleteUserModel.fromJson(jsonData);
    } else if (response.statusCode == 404) {
      throw Exception('User not found.');
    } else {
      throw Exception('Failed to delete the user.');
    }
  }


}