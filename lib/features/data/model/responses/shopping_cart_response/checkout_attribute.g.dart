// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckoutAttributeResponse _$CheckoutAttributeResponseFromJson(
        Map<String, dynamic> json) =>
    CheckoutAttributeResponse(
      name: json['name'] as String?,
      defaultValue: json['default_value'] as String?,
      textPrompt: json['text_prompt'] as String?,
      isRequired: json['is_required'] as bool?,
      selectedDay: (json['selected_day'] as num?)?.toInt(),
      selectedMonth: (json['selected_month'] as num?)?.toInt(),
      selectedYear: (json['selected_year'] as num?)?.toInt(),
      allowedFileExtensions: (json['allowed_file_extensions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      attributeControlType: (json['attribute_control_type'] as num?)?.toInt(),
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => ValueResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CheckoutAttributeResponseToJson(
        CheckoutAttributeResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'default_value': instance.defaultValue,
      'text_prompt': instance.textPrompt,
      'is_required': instance.isRequired,
      'selected_day': instance.selectedDay,
      'selected_month': instance.selectedMonth,
      'selected_year': instance.selectedYear,
      'allowed_file_extensions': instance.allowedFileExtensions,
      'attribute_control_type': instance.attributeControlType,
      'values': instance.values,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
