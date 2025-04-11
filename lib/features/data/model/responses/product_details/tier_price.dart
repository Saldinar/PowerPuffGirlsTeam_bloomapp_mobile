// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tier_price.g.dart';

@JsonSerializable()
class TierPriceResponse {
  final String? price;
  @JsonKey(name: 'price_value')
  final int? priceValue;
  final int? quantity;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const TierPriceResponse({
    this.price,
    this.priceValue,
    this.quantity,
    this.customProperties,
  });

  factory TierPriceResponse.fromJson(Map<String, dynamic> json) {
    return _$TierPriceResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TierPriceResponseToJson(this);
}
