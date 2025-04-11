import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product/value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'custom_address_attribute.g.dart';

@JsonSerializable()
class CustomAddressAttributeResponse {
  final String? name;
  @JsonKey(name: 'is_required')
  final bool? isRequired;
  @JsonKey(name: 'default_value')
  final String? defaultValue;
  @JsonKey(name: 'attribute_control_type')
  final String? attributeControlType;
  final List<ValueResponse>? values;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const CustomAddressAttributeResponse({
    this.name,
    this.isRequired,
    this.defaultValue,
    this.attributeControlType,
    this.values,
    this.id,
    this.customProperties,
  });

  factory CustomAddressAttributeResponse.fromJson(Map<String, dynamic> json) {
    return _$CustomAddressAttributeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomAddressAttributeResponseToJson(this);
}
