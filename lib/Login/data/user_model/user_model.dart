import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel(
      {String? Name,
      String? Email,
      int? Id,
      required String Token}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);



}
