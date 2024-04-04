class PreSignUpModel {
  String? message;
  String? token;

  PreSignUpModel({this.message, this.token});

  PreSignUpModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    token = json['token'];
  }
}
