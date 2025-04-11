// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product_response/value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_attribute.g.dart';

@JsonSerializable()
class ProductAttributeResponse {
  @JsonKey(name: 'product_id')
  final int? productId;
  @JsonKey(name: 'product_attribute_id')
  final int? productAttributeId;
  final String? name;
  final String? description;
  @JsonKey(name: 'text_prompt')
  final String? textPrompt;
  @JsonKey(name: 'is_required')
  final bool? isRequired;
  @JsonKey(name: 'default_value')
  final String? defaultValue;
  @JsonKey(name: 'selected_day')
  final int? selectedDay;
  @JsonKey(name: 'selected_month')
  final int? selectedMonth;
  @JsonKey(name: 'selected_year')
  final int? selectedYear;
  @JsonKey(name: 'has_condition')
  final bool? hasCondition;
  @JsonKey(name: 'allowed_file_extensions')
  final List<String>? allowedFileExtensions;
  @JsonKey(name: 'attribute_control_type')
  final String? attributeControlType;
  final List<ValueResponse>? values;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ProductAttributeResponse({
    this.productId,
    this.productAttributeId,
    this.name,
    this.description,
    this.textPrompt,
    this.isRequired,
    this.defaultValue,
    this.selectedDay,
    this.selectedMonth,
    this.selectedYear,
    this.hasCondition,
    this.allowedFileExtensions,
    this.attributeControlType,
    this.values,
    this.id,
    this.customProperties,
  });

  factory ProductAttributeResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductAttributeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductAttributeResponseToJson(this);
}
