// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/product/group.dart';
import 'package:json_annotation/json_annotation.dart';

part 'allowed_quantity.g.dart';

@JsonSerializable()
class AllowedQuantityResponse {
  final bool? disabled;
  final GroupResponse? group;
  final bool? selected;
  final String? text;
  final String? value;

  const AllowedQuantityResponse({
    this.disabled,
    this.group,
    this.selected,
    this.text,
    this.value,
  });

  factory AllowedQuantityResponse.fromJson(Map<String, dynamic> json) {
    return _$AllowedQuantityResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllowedQuantityResponseToJson(this);
}
