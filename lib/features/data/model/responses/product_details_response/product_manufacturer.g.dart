// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_manufacturer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductManufacturerResponse _$ProductManufacturerResponseFromJson(
        Map<String, dynamic> json) =>
    ProductManufacturerResponse(
      name: json['name'] as String?,
      seName: json['se_name'] as String?,
      isActive: json['is_active'] as bool?,
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductManufacturerResponseToJson(
        ProductManufacturerResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'se_name': instance.seName,
      'is_active': instance.isActive,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
