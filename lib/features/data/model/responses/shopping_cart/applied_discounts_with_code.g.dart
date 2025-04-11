// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applied_discounts_with_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppliedDiscountsWithCodeResponse _$AppliedDiscountsWithCodeResponseFromJson(
        Map<String, dynamic> json) =>
    AppliedDiscountsWithCodeResponse(
      couponCode: json['coupon_code'] as String?,
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppliedDiscountsWithCodeResponseToJson(
        AppliedDiscountsWithCodeResponse instance) =>
    <String, dynamic>{
      'coupon_code': instance.couponCode,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
