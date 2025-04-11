import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'additional_product_review_list.g.dart';

@JsonSerializable()
class AdditionalProductReviewListResponse {
  @JsonKey(name: 'product_review_id')
  final int? productReviewId;
  @JsonKey(name: 'review_type_id')
  final int? reviewTypeId;
  final int? rating;
  final String? name;
  @JsonKey(name: 'visible_to_all_customers')
  final bool? visibleToAllCustomers;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const AdditionalProductReviewListResponse({
    this.productReviewId,
    this.reviewTypeId,
    this.rating,
    this.name,
    this.visibleToAllCustomers,
    this.id,
    this.customProperties,
  });

  factory AdditionalProductReviewListResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return _$AdditionalProductReviewListResponseFromJson(json);
  }

  Map<String, dynamic> toJson() =>
      _$AdditionalProductReviewListResponseToJson(this);
}
