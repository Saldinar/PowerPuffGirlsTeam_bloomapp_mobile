import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/applied_discounts_with_code.dart';
import 'package:json_annotation/json_annotation.dart';

part 'discount_box.g.dart';

@JsonSerializable()
class DiscountBoxResponse {
  @JsonKey(name: 'applied_discounts_with_codes')
  final List<AppliedDiscountsWithCodeResponse>? appliedDiscountsWithCodes;
  final bool? display;
  final List<String>? messages;
  @JsonKey(name: 'is_applied')
  final bool? isApplied;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const DiscountBoxResponse({
    this.appliedDiscountsWithCodes,
    this.display,
    this.messages,
    this.isApplied,
    this.customProperties,
  });

  factory DiscountBoxResponse.fromJson(Map<String, dynamic> json) {
    return _$DiscountBoxResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DiscountBoxResponseToJson(this);
}
