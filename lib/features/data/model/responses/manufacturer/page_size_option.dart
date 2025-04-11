// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/product/group.dart';
import 'package:json_annotation/json_annotation.dart';

part 'page_size_option.g.dart';

@JsonSerializable()
class PageSizeOptionResponse {
  final bool? disabled;
  final GroupResponse? group;
  final bool? selected;
  final String? text;
  final String? value;

  const PageSizeOptionResponse({
    this.disabled,
    this.group,
    this.selected,
    this.text,
    this.value,
  });

  factory PageSizeOptionResponse.fromJson(Map<String, dynamic> json) {
    return _$PageSizeOptionResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PageSizeOptionResponseToJson(this);
}
