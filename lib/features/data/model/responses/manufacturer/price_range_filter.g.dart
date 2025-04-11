// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_range_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceRangeFilterResponse _$PriceRangeFilterResponseFromJson(
        Map<String, dynamic> json) =>
    PriceRangeFilterResponse(
      enabled: json['enabled'] as bool?,
      selectedPriceRange: json['selected_price_range'] == null
          ? null
          : SelectedPriceRangeResponse.fromJson(
              json['selected_price_range'] as Map<String, dynamic>),
      availablePriceRange: json['available_price_range'] == null
          ? null
          : AvailablePriceRangeResponse.fromJson(
              json['available_price_range'] as Map<String, dynamic>),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PriceRangeFilterResponseToJson(
        PriceRangeFilterResponse instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'selected_price_range': instance.selectedPriceRange,
      'available_price_range': instance.availablePriceRange,
      'custom_properties': instance.customProperties,
    };
