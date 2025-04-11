// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_tag.g.dart';

@JsonSerializable()
class ProductTagResponse {
  final String? name;
  @JsonKey(name: 'se_name')
  final String? seName;
  @JsonKey(name: 'product_count')
  final int? productCount;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ProductTagResponse({
    this.name,
    this.seName,
    this.productCount,
    this.id,
    this.customProperties,
  });

  factory ProductTagResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductTagResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductTagResponseToJson(this);
}
