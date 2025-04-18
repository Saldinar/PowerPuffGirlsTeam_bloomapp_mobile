// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRequest _$AuthRequestFromJson(Map<String, dynamic> json) => AuthRequest(
      email: json['email'] as String?,
      password: json['password'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$AuthRequestToJson(AuthRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
    };
