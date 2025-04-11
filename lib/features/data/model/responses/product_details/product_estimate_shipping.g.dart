// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_estimate_shipping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductEstimateShippingResponse _$ProductEstimateShippingResponseFromJson(
        Map<String, dynamic> json) =>
    ProductEstimateShippingResponse(
      productId: (json['product_id'] as num?)?.toInt(),
      requestDelay: (json['request_delay'] as num?)?.toInt(),
      enabled: json['enabled'] as bool?,
      countryId: (json['country_id'] as num?)?.toInt(),
      stateProvinceId: (json['state_province_id'] as num?)?.toInt(),
      zipPostalCode: json['zip_postal_code'] as String?,
      useCity: json['use_city'] as bool?,
      city: json['city'] as String?,
      availableCountries: (json['available_countries'] as List<dynamic>?)
          ?.map((e) =>
              AvailableCountryResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableStates: (json['available_states'] as List<dynamic>?)
          ?.map(
              (e) => AvailableStateResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductEstimateShippingResponseToJson(
        ProductEstimateShippingResponse instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'request_delay': instance.requestDelay,
      'enabled': instance.enabled,
      'country_id': instance.countryId,
      'state_province_id': instance.stateProvinceId,
      'zip_postal_code': instance.zipPostalCode,
      'use_city': instance.useCity,
      'city': instance.city,
      'available_countries': instance.availableCountries,
      'available_states': instance.availableStates,
      'custom_properties': instance.customProperties,
    };
