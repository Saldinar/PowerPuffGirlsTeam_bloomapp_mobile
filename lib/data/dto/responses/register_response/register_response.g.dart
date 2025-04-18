// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      message: json['message'] as String,
      userName: json['userName'] as String,
      customerId: (json['customerId'] as num).toInt(),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'token': instance.token,
      'userName': instance.userName,
      'customerId': instance.customerId,
    };
