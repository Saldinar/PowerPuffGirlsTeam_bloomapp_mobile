import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product_reviews/additional_product_review_list.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_review.g.dart';

@JsonSerializable()
class ProductReviewItemResponse {
  @JsonKey(name: 'product_id')
  final int? productId;
  @JsonKey(name: 'product_name')
  final String? productName;
  @JsonKey(name: 'product_se_name')
  final String? productSeName;
  final String? title;
  @JsonKey(name: 'review_text')
  final String? reviewText;
  @JsonKey(name: 'reply_text')
  final String? replyText;
  final int? rating;
  @JsonKey(name: 'written_on_str')
  final String? writtenOnStr;
  @JsonKey(name: 'approval_status')
  final String? approvalStatus;
  @JsonKey(name: 'additional_product_review_list')
  final List<AdditionalProductReviewListResponse>? additionalProductReviewList;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ProductReviewItemResponse({
    this.productId,
    this.productName,
    this.productSeName,
    this.title,
    this.reviewText,
    this.replyText,
    this.rating,
    this.writtenOnStr,
    this.approvalStatus,
    this.additionalProductReviewList,
    this.customProperties,
  });

  factory ProductReviewItemResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductReviewItemResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductReviewItemResponseToJson(this);
}
