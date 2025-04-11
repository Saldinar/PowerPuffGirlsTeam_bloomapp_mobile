import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product_reviews/product_review.dart';
import 'package:amamini_client/features/data/model/responses/reward_points/pager_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_reviews_response.g.dart';

@JsonSerializable()
class ProductReviewsResponse {
  @JsonKey(name: 'product_reviews')
  final List<ProductReviewItemResponse>? productReviews;
  @JsonKey(name: 'pager_model')
  final PagerModelResponse? pagerModel;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ProductReviewsResponse({
    this.productReviews,
    this.pagerModel,
    this.customProperties,
  });

  factory ProductReviewsResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductReviewsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductReviewsResponseToJson(this);
}
