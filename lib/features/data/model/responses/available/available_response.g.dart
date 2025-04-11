// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableResponse _$AvailableResponseFromJson(Map<String, dynamic> json) =>
    AvailableResponse(
      disabled: json['disabled'] as bool?,
      group: json['group'] == null
          ? null
          : GroupResponse.fromJson(json['group'] as Map<String, dynamic>),
      selected: json['selected'] as bool?,
      text: json['text'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$AvailableResponseToJson(AvailableResponse instance) =>
    <String, dynamic>{
      'disabled': instance.disabled,
      'group': instance.group,
      'selected': instance.selected,
      'text': instance.text,
      'value': instance.value,
    };
