import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product/value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'checkout_attribute.g.dart';

@JsonSerializable()
class CheckoutAttributeResponse {
  final String? name;
  @JsonKey(name: 'default_value')
  final String? defaultValue;
  @JsonKey(name: 'text_prompt')
  final String? textPrompt;
  @JsonKey(name: 'is_required')
  final bool? isRequired;
  @JsonKey(name: 'selected_day')
  final int? selectedDay;
  @JsonKey(name: 'selected_month')
  final int? selectedMonth;
  @JsonKey(name: 'selected_year')
  final int? selectedYear;
  @JsonKey(name: 'allowed_file_extensions')
  final List<String>? allowedFileExtensions;
  @JsonKey(name: 'attribute_control_type')
  final String? attributeControlType;
  final List<ValueResponse>? values;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const CheckoutAttributeResponse({
    this.name,
    this.defaultValue,
    this.textPrompt,
    this.isRequired,
    this.selectedDay,
    this.selectedMonth,
    this.selectedYear,
    this.allowedFileExtensions,
    this.attributeControlType,
    this.values,
    this.id,
    this.customProperties,
  });

  factory CheckoutAttributeResponse.fromJson(Map<String, dynamic> json) {
    return _$CheckoutAttributeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CheckoutAttributeResponseToJson(this);
}
