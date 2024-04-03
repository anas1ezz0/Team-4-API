import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'http://10.0.2.2:5000/',
      headers: {'Content-Type': 'application/json'},
    ));
    dio.interceptors.add(
        LogInterceptor(requestBody: true, error: true, responseBody: true));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token ?? '',
    };
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    bool isFormData = false,
  }) async {
    return await dio.post(
      url,
      queryParameters: {'ln': 'en'},
      data: isFormData ? FormData.fromMap(data) : data,
    );
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token ?? '',
    };
    return dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
