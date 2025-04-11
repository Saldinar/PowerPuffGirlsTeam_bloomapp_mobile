// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TierPriceResponse _$TierPriceResponseFromJson(Map<String, dynamic> json) =>
    TierPriceResponse(
      price: json['price'] as String?,
      priceValue: (json['price_value'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TierPriceResponseToJson(TierPriceResponse instance) =>
    <String, dynamic>{
      'price': instance.price,
      'price_value': instance.priceValue,
      'quantity': instance.quantity,
      'custom_properties': instance.customProperties,
    };
