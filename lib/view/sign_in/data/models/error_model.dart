class ErrorModel {
  final String errorMessage;
  final int statusCode;
  ErrorModel({required this.errorMessage, required this.statusCode});
  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      errorMessage: json['ErrorMessage'],
      statusCode: json['status'],
    );
  }
}
