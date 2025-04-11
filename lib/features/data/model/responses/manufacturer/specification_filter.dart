// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product/attribute.dart';
import 'package:json_annotation/json_annotation.dart';

part 'specification_filter.g.dart';

@JsonSerializable()
class SpecificationFilterResponse {
  final bool? enabled;
  final List<AttributeResponse>? attributes;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const SpecificationFilterResponse({
    this.enabled,
    this.attributes,
    this.customProperties,
  });

  factory SpecificationFilterResponse.fromJson(Map<String, dynamic> json) {
    return _$SpecificationFilterResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpecificationFilterResponseToJson(this);
}
