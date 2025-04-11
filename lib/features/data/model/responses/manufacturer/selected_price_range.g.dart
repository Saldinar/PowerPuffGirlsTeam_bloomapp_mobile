// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_price_range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectedPriceRangeResponse _$SelectedPriceRangeResponseFromJson(
        Map<String, dynamic> json) =>
    SelectedPriceRangeResponse(
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelectedPriceRangeResponseToJson(
        SelectedPriceRangeResponse instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'custom_properties': instance.customProperties,
    };
