// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordRequest _$PasswordRequestFromJson(Map<String, dynamic> json) =>
    PasswordRequest(
      oldPassword: json['old_password'] as String,
      newPassword: json['new_password'] as String,
      confirmNewPassword: json['confirm_new_password'] as String,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PasswordRequestToJson(PasswordRequest instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
      'confirm_new_password': instance.confirmNewPassword,
      'custom_properties': instance.customProperties,
    };
