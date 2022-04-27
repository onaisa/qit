// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      Name: json['Name'] as String?,
      Email: json['Email'] as String?,
      Id: json['Id'] as int?,
      Token: json['Token'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'Name': instance.Name,
      'Email': instance.Email,
      'Id': instance.Id,
      'Token': instance.Token,
    };
