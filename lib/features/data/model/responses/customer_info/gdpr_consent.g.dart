// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gdpr_consent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GdprConsentResponse _$GdprConsentResponseFromJson(Map<String, dynamic> json) =>
    GdprConsentResponse(
      message: json['message'] as String?,
      isRequired: json['is_required'] as bool?,
      requiredMessage: json['required_message'] as String?,
      accepted: json['accepted'] as bool?,
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GdprConsentResponseToJson(
        GdprConsentResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'is_required': instance.isRequired,
      'required_message': instance.requiredMessage,
      'accepted': instance.accepted,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
