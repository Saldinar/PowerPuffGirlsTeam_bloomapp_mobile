// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_addresses_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerAddressesResponse _$CustomerAddressesResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerAddressesResponse(
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => AddressResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerAddressesResponseToJson(
        CustomerAddressesResponse instance) =>
    <String, dynamic>{
      'addresses': instance.addresses,
      'custom_properties': instance.customProperties,
    };
