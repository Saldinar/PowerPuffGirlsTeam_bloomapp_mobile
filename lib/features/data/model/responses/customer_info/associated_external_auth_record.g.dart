// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associated_external_auth_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssociatedExternalAuthRecordResponse
    _$AssociatedExternalAuthRecordResponseFromJson(Map<String, dynamic> json) =>
        AssociatedExternalAuthRecordResponse(
          email: json['email'] as String?,
          externalIdentifier: json['external_identifier'] as String?,
          authMethodName: json['auth_method_name'] as String?,
          id: (json['id'] as num?)?.toInt(),
          customProperties: json['custom_properties'] == null
              ? null
              : CustomPropertiesResponse.fromJson(
                  json['custom_properties'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AssociatedExternalAuthRecordResponseToJson(
        AssociatedExternalAuthRecordResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'external_identifier': instance.externalIdentifier,
      'auth_method_name': instance.authMethodName,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
