// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product/value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attribute.g.dart';

@JsonSerializable()
class AttributeResponse {
  AttributeResponse({
    required this.id,
    this.name,
    this.values,
    this.customProperties,
  });

  final String? name;
  final List<ValueResponse>? values;
  final int id;
  @JsonKey(name: 'custom_properties')
  CustomPropertiesResponse? customProperties;

  factory AttributeResponse.fromJson(Map<String, dynamic> json) =>
      _$AttributeResponseFromJson(json);
}
