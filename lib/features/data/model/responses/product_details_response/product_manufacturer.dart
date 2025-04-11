// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_manufacturer.g.dart';

@JsonSerializable()
class ProductManufacturerResponse {
  final String? name;
  @JsonKey(name: 'se_name')
  final String? seName;
  @JsonKey(name: 'is_active')
  final bool? isActive;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ProductManufacturerResponse({
    this.name,
    this.seName,
    this.isActive,
    this.id,
    this.customProperties,
  });

  factory ProductManufacturerResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductManufacturerResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductManufacturerResponseToJson(this);
}
