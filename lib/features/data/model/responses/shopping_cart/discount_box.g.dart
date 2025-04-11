// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscountBoxResponse _$DiscountBoxResponseFromJson(Map<String, dynamic> json) =>
    DiscountBoxResponse(
      appliedDiscountsWithCodes:
          (json['applied_discounts_with_codes'] as List<dynamic>?)
              ?.map((e) => AppliedDiscountsWithCodeResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      display: json['display'] as bool?,
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isApplied: json['is_applied'] as bool?,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DiscountBoxResponseToJson(
        DiscountBoxResponse instance) =>
    <String, dynamic>{
      'applied_discounts_with_codes': instance.appliedDiscountsWithCodes,
      'display': instance.display,
      'messages': instance.messages,
      'is_applied': instance.isApplied,
      'custom_properties': instance.customProperties,
    };
