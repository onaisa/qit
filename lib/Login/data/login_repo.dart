import 'package:dio/dio.dart';
import 'package:qittestonaisa/config/constent.dart';
import 'package:qittestonaisa/config/dio.dart';

class loginRepo{

   Future<dynamic> login({required String email ,required String passWord}) async {
    try {
     
      Response response = await DioHelper.postData(
        url: loginUrl,
        data: {
          "email":email,
          "passWord":passWord
        }
       
      );
      print("respon in repo is ${response}");

      return response.data;
    } on DioError catch (e) {
      print(" login repo  ///${e.message}///");
      throw Exception(e.message);
    }
  }
}