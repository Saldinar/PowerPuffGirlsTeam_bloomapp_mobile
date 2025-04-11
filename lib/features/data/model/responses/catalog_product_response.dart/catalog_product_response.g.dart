// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogProductResponse _$CatalogProductResponseFromJson(
        Map<String, dynamic> json) =>
    CatalogProductResponse(
      templateViewPath: json['template_view_path'] as String,
      catalogProductsModel: CatalogProductsModelResponse.fromJson(
          json['catalog_products_model'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogProductResponseToJson(
        CatalogProductResponse instance) =>
    <String, dynamic>{
      'template_view_path': instance.templateViewPath,
      'catalog_products_model': instance.catalogProductsModel,
    };
