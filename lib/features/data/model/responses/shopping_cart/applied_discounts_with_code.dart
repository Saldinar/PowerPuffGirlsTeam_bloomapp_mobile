import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'applied_discounts_with_code.g.dart';

@JsonSerializable()
class AppliedDiscountsWithCodeResponse {
  @JsonKey(name: 'coupon_code')
  final String? couponCode;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const AppliedDiscountsWithCodeResponse({
    this.couponCode,
    this.id,
    this.customProperties,
  });

  factory AppliedDiscountsWithCodeResponse.fromJson(Map<String, dynamic> json) {
    return _$AppliedDiscountsWithCodeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() =>
      _$AppliedDiscountsWithCodeResponseToJson(this);
}
