part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = loading;
  const factory LoginState.success() = success;
  const factory LoginState.faliure({required String message}) = failure;

}
