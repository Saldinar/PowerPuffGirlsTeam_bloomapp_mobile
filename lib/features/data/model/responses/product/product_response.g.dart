// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    ProductResponse(
      id: (json['id'] as num).toInt(),
      markAsNew: json['mark_as_new'] as bool,
      productPrice: ProductPriceResponse.fromJson(
          json['product_price'] as Map<String, dynamic>),
      name: json['name'] as String,
      shortDescription: json['short_description'] as String?,
      fullDescription: json['full_description'] as String?,
      seName: json['se_name'] as String?,
      sku: json['sku'] as String?,
      productType: json['product_type'] as String?,
      defaultPictureModel: (json['picture_models'] as List<dynamic>?)
          ?.map((e) =>
              DefaultPictureModelResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      productSpecificationModel: json['product_specification_model'] == null
          ? null
          : ProductSpecificationModelResponse.fromJson(
              json['product_specification_model'] as Map<String, dynamic>),
      reviewOverviewModel: json['review_overview_model'] == null
          ? null
          : ReviewOverviewModelResponse.fromJson(
              json['review_overview_model'] as Map<String, dynamic>),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_description': instance.shortDescription,
      'full_description': instance.fullDescription,
      'se_name': instance.seName,
      'sku': instance.sku,
      'product_type': instance.productType,
      'mark_as_new': instance.markAsNew,
      'product_price': instance.productPrice,
      'picture_models': instance.defaultPictureModel,
      'product_specification_model': instance.productSpecificationModel,
      'review_overview_model': instance.reviewOverviewModel,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
