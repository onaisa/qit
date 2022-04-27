import 'package:dio/dio.dart';

import 'constent.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(BaseOptions(
      // baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
    ));
   
  }

  static Future<Response<dynamic>> getData({
    required String url,
    String? token,
  }) async {
    return await dio!.get(
      url,
    );
  }

  static Future<Response<dynamic>> postData({
    required String url,
    required dynamic data,
    String? token,
  }) async {
     dio!.options.headers = {
      'accept': 'application/json',
    
      'Content-Type': 'application/json',
    };
    return await dio!.post(
      url,
      data: data,
    );
  }
}
