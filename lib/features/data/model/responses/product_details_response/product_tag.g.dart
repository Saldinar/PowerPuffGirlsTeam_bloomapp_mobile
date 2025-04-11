// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductTagResponse _$ProductTagResponseFromJson(Map<String, dynamic> json) =>
    ProductTagResponse(
      name: json['name'] as String?,
      seName: json['se_name'] as String?,
      productCount: (json['product_count'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductTagResponseToJson(ProductTagResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'se_name': instance.seName,
      'product_count': instance.productCount,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
