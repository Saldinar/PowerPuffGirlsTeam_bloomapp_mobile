// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorModelResponse _$VendorModelResponseFromJson(Map<String, dynamic> json) =>
    VendorModelResponse(
      name: json['name'] as String?,
      seName: json['se_name'] as String?,
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendorModelResponseToJson(
        VendorModelResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'se_name': instance.seName,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
