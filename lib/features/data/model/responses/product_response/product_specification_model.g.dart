// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_specification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductSpecificationModelResponse _$ProductSpecificationModelResponseFromJson(
        Map<String, dynamic> json) =>
    ProductSpecificationModelResponse(
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => GroupResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductSpecificationModelResponseToJson(
        ProductSpecificationModelResponse instance) =>
    <String, dynamic>{
      'groups': instance.groups,
      'custom_properties': instance.customProperties,
    };
