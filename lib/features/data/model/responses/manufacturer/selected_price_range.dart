// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'selected_price_range.g.dart';

@JsonSerializable()
class SelectedPriceRangeResponse {
  final int? from;
  final int? to;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const SelectedPriceRangeResponse({this.from, this.to, this.customProperties});

  factory SelectedPriceRangeResponse.fromJson(Map<String, dynamic> json) {
    return _$SelectedPriceRangeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SelectedPriceRangeResponseToJson(this);
}
