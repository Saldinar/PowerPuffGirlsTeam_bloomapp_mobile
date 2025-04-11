// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValueResponse _$ValueResponseFromJson(Map<String, dynamic> json) =>
    ValueResponse(
      attributeTypeId: (json['attribute_type_id'] as num?)?.toInt(),
      valueRaw: json['value_raw'] as String?,
      colorSquaresRgb: json['color_squares_rgb'] as String?,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValueResponseToJson(ValueResponse instance) =>
    <String, dynamic>{
      'attribute_type_id': instance.attributeTypeId,
      'value_raw': instance.valueRaw,
      'color_squares_rgb': instance.colorSquaresRgb,
      'custom_properties': instance.customProperties,
    };
