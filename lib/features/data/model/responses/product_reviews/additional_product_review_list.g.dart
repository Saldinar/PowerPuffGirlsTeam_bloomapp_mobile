// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_product_review_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdditionalProductReviewListResponse
    _$AdditionalProductReviewListResponseFromJson(Map<String, dynamic> json) =>
        AdditionalProductReviewListResponse(
          productReviewId: (json['product_review_id'] as num?)?.toInt(),
          reviewTypeId: (json['review_type_id'] as num?)?.toInt(),
          rating: (json['rating'] as num?)?.toInt(),
          name: json['name'] as String?,
          visibleToAllCustomers: json['visible_to_all_customers'] as bool?,
          id: (json['id'] as num?)?.toInt(),
          customProperties: json['custom_properties'] == null
              ? null
              : CustomPropertiesResponse.fromJson(
                  json['custom_properties'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AdditionalProductReviewListResponseToJson(
        AdditionalProductReviewListResponse instance) =>
    <String, dynamic>{
      'product_review_id': instance.productReviewId,
      'review_type_id': instance.reviewTypeId,
      'rating': instance.rating,
      'name': instance.name,
      'visible_to_all_customers': instance.visibleToAllCustomers,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
