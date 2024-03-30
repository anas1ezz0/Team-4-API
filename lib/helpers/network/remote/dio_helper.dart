import 'package:dio/dio.dart';


class DioHelper{
  static late Dio dio;

  static init(){
    dio= Dio(
        BaseOptions(
          // baseUrl: 'https://markaz-el-amal.onrender.com/auth/patient/',
          baseUrl: 'http://10.0.2.2:5000/auth/patient/',
          receiveDataWhenStatusError: true,
        )
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
    bool isFormData=false,
  })async {
    dio.options.headers={
      'Authorization':token??'',
      'Content-Type': 'application/json',
    };
    return dio.post(
        url,
        queryParameters: query,
        data: isFormData ? FormData.fromMap(data) : data,

        options: Options(
          validateStatus: (status) => true,
          followRedirects: false,
        )
    );
  }


  static Future<Response>  getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  })async{
    dio.options.headers={
      'Authorization':token??'',
      'Content-Type': 'application/json',
    };
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  })async {
    dio.options.headers={
      'Authorization':token??'',
      'Content-Type': 'application/json',
    };
    return dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }


}