// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vendor_model.g.dart';

@JsonSerializable()
class VendorModelResponse {
  final String? name;
  @JsonKey(name: 'se_name')
  final String? seName;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const VendorModelResponse({
    this.name,
    this.seName,
    this.id,
    this.customProperties,
  });

  factory VendorModelResponse.fromJson(Map<String, dynamic> json) {
    return _$VendorModelResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VendorModelResponseToJson(this);
}
