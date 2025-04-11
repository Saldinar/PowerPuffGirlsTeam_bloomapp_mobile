// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/product/group.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manufacturer.g.dart';

@JsonSerializable()
class ManufacturerInfoResponse {
  final bool? disabled;
  final GroupResponse? group;
  final bool? selected;
  final String? text;
  final String? value;

  const ManufacturerInfoResponse({
    this.disabled,
    this.group,
    this.selected,
    this.text,
    this.value,
  });

  factory ManufacturerInfoResponse.fromJson(Map<String, dynamic> json) {
    return _$ManufacturerInfoResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ManufacturerInfoResponseToJson(this);
}
