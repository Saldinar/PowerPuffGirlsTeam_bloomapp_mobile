// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specification_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecificationFilterResponse _$SpecificationFilterResponseFromJson(
        Map<String, dynamic> json) =>
    SpecificationFilterResponse(
      enabled: json['enabled'] as bool?,
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => AttributeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpecificationFilterResponseToJson(
        SpecificationFilterResponse instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'attributes': instance.attributes,
      'custom_properties': instance.customProperties,
    };
