// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/manufacturer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manufacturer_filter.g.dart';

@JsonSerializable()
class ManufacturerFilterResponse {
  final bool? enabled;
  final List<ManufacturerInfoResponse>? manufacturers;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ManufacturerFilterResponse({
    this.enabled,
    this.manufacturers,
    this.customProperties,
  });

  factory ManufacturerFilterResponse.fromJson(Map<String, dynamic> json) {
    return _$ManufacturerFilterResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ManufacturerFilterResponseToJson(this);
}
