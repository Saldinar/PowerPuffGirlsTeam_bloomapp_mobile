// ignore_for_file: sort_constructors_first
import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'value.g.dart';

@JsonSerializable()
class ValueResponse {
  ValueResponse({
    this.attributeTypeId,
    this.valueRaw,
    this.colorSquaresRgb,
    this.customProperties,
  });

  @JsonKey(name: 'attribute_type_id')
  final int? attributeTypeId;
  @JsonKey(name: 'value_raw')
  final String? valueRaw;
  @JsonKey(name: 'color_squares_rgb')
  final String? colorSquaresRgb;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  factory ValueResponse.fromJson(Map<String, dynamic> json) =>
      _$ValueResponseFromJson(json);
}
