// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_address_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAddressModelRequest _$AddAddressModelRequestFromJson(
        Map<String, dynamic> json) =>
    AddAddressModelRequest(
      json['address'] == null
          ? null
          : AddressResponse.fromJson(json['address'] as Map<String, dynamic>),
      json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddAddressModelRequestToJson(
        AddAddressModelRequest instance) =>
    <String, dynamic>{
      'address': instance.address,
      'custom_properties': instance.customProperties,
    };
