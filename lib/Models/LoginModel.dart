import 'User.dart';

class UserResponseLogin {
  final String? message;

  final String? error;
  final User? user;
  final String? token;

  UserResponseLogin({this.message, this.user, this.token,this.error});

  factory UserResponseLogin.fromJson(Map<String, dynamic> json) {
    return UserResponseLogin(
      message: json['message'],
      error: json['error'],

      user: json['user'] != null ? User.fromJson(json['user']) : null,
      token: json['token'],
    );
  }
  Map<String, dynamic> toJson() {
    if (error != null) {
      return {
        'error': error,
      };
    } else if (message != null) {
      return {
        'message': message,
      };
    } else {
      throw Exception("UserResponse should have either 'message' or 'error'.");
    }
  }

}

