// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      customerId: (json['customer_id'] as num).toInt(),
      token: json['token'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'username': instance.username,
      'customer_id': instance.customerId,
      'token': instance.token,
    };
