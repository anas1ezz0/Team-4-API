class SignInModel {
  final String message;
  final String accessToken;

  SignInModel({required this.message, required this.accessToken});
  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      message: json['message'],
      accessToken: json['accessToken'],
    );
  }
}
