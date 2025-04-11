// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_review_overview.g.dart';

@JsonSerializable()
class ProductReviewOverviewResponse {
  @JsonKey(name: 'product_id')
  final int? productId;
  @JsonKey(name: 'rating_sum')
  final int? ratingSum;
  @JsonKey(name: 'total_reviews')
  final int? totalReviews;
  @JsonKey(name: 'allow_customer_reviews')
  final bool? allowCustomerReviews;
  @JsonKey(name: 'can_add_new_review')
  final bool? canAddNewReview;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ProductReviewOverviewResponse({
    this.productId,
    this.ratingSum,
    this.totalReviews,
    this.allowCustomerReviews,
    this.canAddNewReview,
    this.customProperties,
  });

  factory ProductReviewOverviewResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductReviewOverviewResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductReviewOverviewResponseToJson(this);
}
