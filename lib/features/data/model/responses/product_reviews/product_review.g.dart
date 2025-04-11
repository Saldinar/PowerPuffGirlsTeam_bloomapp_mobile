// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductReviewItemResponse _$ProductReviewItemResponseFromJson(
        Map<String, dynamic> json) =>
    ProductReviewItemResponse(
      productId: (json['product_id'] as num?)?.toInt(),
      productName: json['product_name'] as String?,
      productSeName: json['product_se_name'] as String?,
      title: json['title'] as String?,
      reviewText: json['review_text'] as String?,
      replyText: json['reply_text'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      writtenOnStr: json['written_on_str'] as String?,
      approvalStatus: json['approval_status'] as String?,
      additionalProductReviewList:
          (json['additional_product_review_list'] as List<dynamic>?)
              ?.map((e) => AdditionalProductReviewListResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductReviewItemResponseToJson(
        ProductReviewItemResponse instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_se_name': instance.productSeName,
      'title': instance.title,
      'review_text': instance.reviewText,
      'reply_text': instance.replyText,
      'rating': instance.rating,
      'written_on_str': instance.writtenOnStr,
      'approval_status': instance.approvalStatus,
      'additional_product_review_list': instance.additionalProductReviewList,
      'custom_properties': instance.customProperties,
    };
