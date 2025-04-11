// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product/attribute.dart';

import 'package:json_annotation/json_annotation.dart';

part 'group.g.dart';

@JsonSerializable()
class GroupResponse {
  GroupResponse({
    required this.id,
    this.name,
    this.attributes,
    this.customProperties,
  });

  String? name;
  List<AttributeResponse>? attributes;
  int id;
  @JsonKey(name: 'custom_properties')
  CustomPropertiesResponse? customProperties;

  factory GroupResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupResponseFromJson(json);
}
