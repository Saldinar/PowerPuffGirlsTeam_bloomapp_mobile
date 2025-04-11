// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailsResponse _$ProductDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    ProductDetailsResponse(
      productDetailsModel: ProductDetailsModelResponse.fromJson(
          json['product_details_model'] as Map<String, dynamic>),
      productTemplateViewPath: json['product_template_view_path'] as String?,
    );

Map<String, dynamic> _$ProductDetailsResponseToJson(
        ProductDetailsResponse instance) =>
    <String, dynamic>{
      'product_template_view_path': instance.productTemplateViewPath,
      'product_details_model': instance.productDetailsModel,
    };
