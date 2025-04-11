// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breadcrumb.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreadcrumbResponse _$BreadcrumbResponseFromJson(Map<String, dynamic> json) =>
    BreadcrumbResponse(
      enabled: json['enabled'] as bool?,
      productId: (json['product_id'] as num?)?.toInt(),
      productName: json['product_name'] as String?,
      productSeName: json['product_se_name'] as String?,
      categoryBreadcrumb: (json['category_breadcrumb'] as List<dynamic>?)
          ?.map((e) =>
              CategoryBreadcrumbResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BreadcrumbResponseToJson(BreadcrumbResponse instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_se_name': instance.productSeName,
      'category_breadcrumb': instance.categoryBreadcrumb,
      'custom_properties': instance.customProperties,
    };
