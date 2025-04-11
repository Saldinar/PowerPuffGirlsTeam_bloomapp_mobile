// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAddressRequest _$AddAddressRequestFromJson(Map<String, dynamic> json) =>
    AddAddressRequest(
      json['model'] == null
          ? null
          : AddAddressModelRequest.fromJson(
              json['model'] as Map<String, dynamic>),
      json['form'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['form'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddAddressRequestToJson(AddAddressRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'form': instance.form,
    };
