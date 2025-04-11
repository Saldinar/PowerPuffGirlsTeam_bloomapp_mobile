// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/product/group.dart';
import 'package:json_annotation/json_annotation.dart';

part 'available_state.g.dart';

@JsonSerializable()
class AvailableStateResponse {
  final bool? disabled;
  final GroupResponse? group;
  final bool? selected;
  final String? text;
  final String? value;

  const AvailableStateResponse({
    this.disabled,
    this.group,
    this.selected,
    this.text,
    this.value,
  });

  factory AvailableStateResponse.fromJson(Map<String, dynamic> json) {
    return _$AvailableStateResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AvailableStateResponseToJson(this);
}
