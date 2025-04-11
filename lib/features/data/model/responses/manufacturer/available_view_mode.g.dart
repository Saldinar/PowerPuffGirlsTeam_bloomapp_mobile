// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_view_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableViewModeResponse _$AvailableViewModeResponseFromJson(
        Map<String, dynamic> json) =>
    AvailableViewModeResponse(
      json['disabled'] as bool?,
      json['group'] == null
          ? null
          : GroupResponse.fromJson(json['group'] as Map<String, dynamic>),
      json['selected'] as bool?,
      json['text'] as String?,
      json['value'] as String?,
    );

Map<String, dynamic> _$AvailableViewModeResponseToJson(
        AvailableViewModeResponse instance) =>
    <String, dynamic>{
      'disabled': instance.disabled,
      'group': instance.group,
      'selected': instance.selected,
      'text': instance.text,
      'value': instance.value,
    };
