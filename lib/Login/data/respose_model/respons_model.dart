import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qittestonaisa/Login/data/user_model/user_model.dart';
part 'respons_model.freezed.dart';
part 'respons_model.g.dart';

@freezed
class ResponsModel with _$ResponsModel {
  const factory ResponsModel(
      {int? code,
      String? message,
      UserModel? data,
     }) = _ResponsModel;

  factory ResponsModel.fromJson(Map<String, dynamic> json) =>
      _$ResponsModelFromJson(json);



}