// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardBoxResponse _$GiftCardBoxResponseFromJson(Map<String, dynamic> json) =>
    GiftCardBoxResponse(
      display: json['display'] as bool?,
      message: json['message'] as String?,
      isApplied: json['is_applied'] as bool?,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardBoxResponseToJson(
        GiftCardBoxResponse instance) =>
    <String, dynamic>{
      'display': instance.display,
      'message': instance.message,
      'is_applied': instance.isApplied,
      'custom_properties': instance.customProperties,
    };
