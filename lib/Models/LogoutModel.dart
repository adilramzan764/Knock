class UserResponseLogout {
  final String? message;


  UserResponseLogout({this.message});

  factory UserResponseLogout.fromJson(Map<String, dynamic> json) {
    return UserResponseLogout(
      message: json['message'],

    );
  }

  Map<String, dynamic> toJson() {
 if (message != null) {
      return {
        'message': message,
      };
    } else {
      throw Exception("UserResponse should have either 'message' or 'error'.");
    }
  }
}
