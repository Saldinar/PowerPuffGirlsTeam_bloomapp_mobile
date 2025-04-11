// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/product/group.dart';
import 'package:json_annotation/json_annotation.dart';

part 'available_view_mode.g.dart';

@JsonSerializable()
class AvailableViewModeResponse {
  final bool? disabled;
  final GroupResponse? group;
  final bool? selected;
  final String? text;
  final String? value;

  const AvailableViewModeResponse(
    this.disabled,
    this.group,
    this.selected,
    this.text,
    this.value,
  );

  factory AvailableViewModeResponse.fromJson(Map<String, dynamic> json) {
    return _$AvailableViewModeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AvailableViewModeResponseToJson(this);
}
