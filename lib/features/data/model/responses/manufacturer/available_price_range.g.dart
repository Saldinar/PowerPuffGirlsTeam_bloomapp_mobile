// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_price_range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailablePriceRangeResponse _$AvailablePriceRangeResponseFromJson(
        Map<String, dynamic> json) =>
    AvailablePriceRangeResponse(
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AvailablePriceRangeResponseToJson(
        AvailablePriceRangeResponse instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'custom_properties': instance.customProperties,
    };
