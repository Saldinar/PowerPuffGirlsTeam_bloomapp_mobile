// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewOverviewModelResponse _$ReviewOverviewModelResponseFromJson(
        Map<String, dynamic> json) =>
    ReviewOverviewModelResponse(
      productId: (json['product_id'] as num?)?.toInt(),
      ratingSum: (json['rating_sum'] as num?)?.toInt(),
      totalReviews: (json['total_reviews'] as num?)?.toInt(),
      allowCustomerReviews: json['allow_customer_reviews'] as bool?,
      canAddNewReview: json['can_add_new_review'] as bool?,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewOverviewModelResponseToJson(
        ReviewOverviewModelResponse instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'rating_sum': instance.ratingSum,
      'total_reviews': instance.totalReviews,
      'allow_customer_reviews': instance.allowCustomerReviews,
      'can_add_new_review': instance.canAddNewReview,
      'custom_properties': instance.customProperties,
    };
