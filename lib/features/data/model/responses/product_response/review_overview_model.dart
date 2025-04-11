// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review_overview_model.g.dart';

@JsonSerializable()
class ReviewOverviewModelResponse {
  ReviewOverviewModelResponse({
    this.productId,
    this.ratingSum,
    this.totalReviews,
    this.allowCustomerReviews,
    this.canAddNewReview,
    this.customProperties,
  });

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

  factory ReviewOverviewModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewOverviewModelResponseFromJson(json);
}
