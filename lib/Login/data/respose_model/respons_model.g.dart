// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'respons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponsModel _$$_ResponsModelFromJson(Map<String, dynamic> json) =>
    _$_ResponsModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResponsModelToJson(_$_ResponsModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
