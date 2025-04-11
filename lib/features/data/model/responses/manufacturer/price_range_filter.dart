// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/available_price_range.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/selected_price_range.dart';
import 'package:json_annotation/json_annotation.dart';

part 'price_range_filter.g.dart';

@JsonSerializable()
class PriceRangeFilterResponse {
  final bool? enabled;
  @JsonKey(name: 'selected_price_range')
  final SelectedPriceRangeResponse? selectedPriceRange;
  @JsonKey(name: 'available_price_range')
  final AvailablePriceRangeResponse? availablePriceRange;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const PriceRangeFilterResponse({
    this.enabled,
    this.selectedPriceRange,
    this.availablePriceRange,
    this.customProperties,
  });

  factory PriceRangeFilterResponse.fromJson(Map<String, dynamic> json) {
    return _$PriceRangeFilterResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PriceRangeFilterResponseToJson(this);
}
