// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/product_response/group.dart';
import 'package:json_annotation/json_annotation.dart';

part 'available_country.g.dart';

@JsonSerializable()
class AvailableCountryResponse {
  final bool? disabled;
  final GroupResponse? group;
  final bool? selected;
  final String? text;
  final String? value;

  const AvailableCountryResponse({
    this.disabled,
    this.group,
    this.selected,
    this.text,
    this.value,
  });

  factory AvailableCountryResponse.fromJson(Map<String, dynamic> json) {
    return _$AvailableCountryResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AvailableCountryResponseToJson(this);
}
