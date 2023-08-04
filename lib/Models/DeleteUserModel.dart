import 'User.dart';

class DeleteUserModel {
  final User? user;
  final String? error;



  DeleteUserModel({ this.user,this.error});

  factory DeleteUserModel.fromJson(Map<String, dynamic> json) {
    return DeleteUserModel(
      error: json['error'],

      user: json['user'] != null ? User.fromJson(json['user']) : null,

    );
  }
  Map<String, dynamic> toJson() {
    if (error != null) {
      return {
        'error': error,
      };
    } else if (user != null) {
      return {
        'user': user,
      };
    } else {
      throw Exception("UserResponse should have either 'message' or 'error'.");
    }
  }

}

