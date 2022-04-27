import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qittestonaisa/Login/data/login_repo.dart';
import 'package:qittestonaisa/Login/data/respose_model/respons_model.dart';
import 'package:qittestonaisa/Login/data/user_model/user_model.dart';
import 'package:qittestonaisa/get_it_.dart/my_get_it_objects.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.initial());

  ResponsModel responsModel = ResponsModel();
  void login({String? passWord, String? email}) async {
    if (email == null || email.isEmpty) {
      {
        emit(const LoginState.faliure(message: "email is required "));
      }
    } else if (passWord == null || passWord.isEmpty) {
      emit(const LoginState.faliure(message: "passWord is required "));
    } else {
      print("cubit login $passWord $email");
      try {
        emit(const LoginState.loading());
        final data = await locator
            .get<loginRepo>()
            .login(email: email, passWord: passWord);
        responsModel = ResponsModel.fromJson(data);
        if (responsModel.code == 0) {
          emit(const LoginState.success());
        } else  {
            emit( LoginState.faliure(message: responsModel.message??"some thing woring"));
        } 
        
        
   

      } catch (e) {
        print("error from controller $e");
        emit(const LoginState.faliure(message: 'no connection'));
      }
    }
  }
}
