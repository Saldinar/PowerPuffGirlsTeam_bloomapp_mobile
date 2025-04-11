// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnRequestResponse _$ReturnRequestResponseFromJson(
        Map<String, dynamic> json) =>
    ReturnRequestResponse(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              ReturnRequestItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReturnRequestResponseToJson(
        ReturnRequestResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
      'custom_properties': instance.customProperties,
    };
