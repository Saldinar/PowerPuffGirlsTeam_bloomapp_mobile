// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/product/group.dart';
import 'package:json_annotation/json_annotation.dart';

part 'available_sort_option.g.dart';

@JsonSerializable()
class AvailableSortOptionResponse {
  final bool? disabled;
  final GroupResponse? group;
  final bool? selected;
  final String? text;
  final String? value;

  const AvailableSortOptionResponse({
    this.disabled,
    this.group,
    this.selected,
    this.text,
    this.value,
  });

  factory AvailableSortOptionResponse.fromJson(Map<String, dynamic> json) {
    return _$AvailableSortOptionResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AvailableSortOptionResponseToJson(this);
}
