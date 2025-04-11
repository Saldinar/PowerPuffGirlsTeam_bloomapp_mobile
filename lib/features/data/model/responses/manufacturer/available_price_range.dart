// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'available_price_range.g.dart';

@JsonSerializable()
class AvailablePriceRangeResponse {
  final int? from;
  final int? to;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const AvailablePriceRangeResponse({
    this.from,
    this.to,
    this.customProperties,
  });

  factory AvailablePriceRangeResponse.fromJson(Map<String, dynamic> json) {
    return _$AvailablePriceRangeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AvailablePriceRangeResponseToJson(this);
}
