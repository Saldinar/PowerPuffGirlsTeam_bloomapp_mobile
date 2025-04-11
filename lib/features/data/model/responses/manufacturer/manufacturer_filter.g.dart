// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturer_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManufacturerFilterResponse _$ManufacturerFilterResponseFromJson(
        Map<String, dynamic> json) =>
    ManufacturerFilterResponse(
      enabled: json['enabled'] as bool?,
      manufacturers: (json['manufacturers'] as List<dynamic>?)
          ?.map((e) =>
              ManufacturerInfoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ManufacturerFilterResponseToJson(
        ManufacturerFilterResponse instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'manufacturers': instance.manufacturers,
      'custom_properties': instance.customProperties,
    };
