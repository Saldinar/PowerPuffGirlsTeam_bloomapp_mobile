// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManufacturerResponse _$ManufacturerResponseFromJson(
        Map<String, dynamic> json) =>
    ManufacturerResponse(
      name: json['name'] as String,
      seName: json['se_name'] as String,
      pictureModel: DefaultPictureModelResponse.fromJson(
          json['picture_model'] as Map<String, dynamic>),
      featuredProducts: (json['featured_products'] as List<dynamic>)
          .map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      catalogProductsModel: CatalogProductsModelResponse.fromJson(
          json['catalog_products_model'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
      customProperties: CustomPropertiesResponse.fromJson(
          json['custom_properties'] as Map<String, dynamic>),
      description: json['description'] as String?,
      metaKeywords: json['meta_keywords'] as String?,
      metaDescription: json['meta_description'] as String?,
      metaTitle: json['meta_title'] as String?,
    );

Map<String, dynamic> _$ManufacturerResponseToJson(
        ManufacturerResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'meta_keywords': instance.metaKeywords,
      'meta_description': instance.metaDescription,
      'meta_title': instance.metaTitle,
      'se_name': instance.seName,
      'picture_model': instance.pictureModel,
      'featured_products': instance.featuredProducts,
      'catalog_products_model': instance.catalogProductsModel,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
