import 'package:dio/dio.dart';
import 'package:qittestonaisa/config/constent.dart';
import 'package:qittestonaisa/config/dio.dart';

class HomePageRepo {
  Future<dynamic> getCategories() async {
    try {
      Response response = await DioHelper.getData(url: catigoriesUrl);
         print("getCategories  in repo is ${response}");
      return response.data;
    } on DioError catch (e) {
      print(" categores  repo  ///${e.message}///");
      throw Exception(e.message);
    }
  }


  Future<dynamic> getProductCategories({required String category}) async {
    try {
      Response response = await DioHelper.getData(url: producteUrl+category);
     
      return response.data;
    } on DioError catch (e) {
      print(" getProductCategories  repo  ///${e.message}///");
      throw Exception(e.message);
    }
  }
}
