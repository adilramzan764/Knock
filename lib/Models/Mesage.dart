class UserResponse {
  final String? message;
  final String? error;

  UserResponse({this.message, this.error});

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      message: json['message'],
      error: json['error'],
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
