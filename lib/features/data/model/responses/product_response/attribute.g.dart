// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributeResponse _$AttributeResponseFromJson(Map<String, dynamic> json) =>
    AttributeResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => ValueResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttributeResponseToJson(AttributeResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'values': instance.values,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
