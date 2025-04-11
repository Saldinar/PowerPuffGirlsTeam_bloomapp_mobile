// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductReviewsResponse _$ProductReviewsResponseFromJson(
        Map<String, dynamic> json) =>
    ProductReviewsResponse(
      productReviews: (json['product_reviews'] as List<dynamic>?)
          ?.map((e) =>
              ProductReviewItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagerModel: json['pager_model'] == null
          ? null
          : PagerModelResponse.fromJson(
              json['pager_model'] as Map<String, dynamic>),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductReviewsResponseToJson(
        ProductReviewsResponse instance) =>
    <String, dynamic>{
      'product_reviews': instance.productReviews,
      'pager_model': instance.pagerModel,
      'custom_properties': instance.customProperties,
    };
