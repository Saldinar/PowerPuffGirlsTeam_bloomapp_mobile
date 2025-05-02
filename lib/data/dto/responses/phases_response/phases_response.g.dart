// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phases_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhasesResponse _$PhasesResponseFromJson(Map<String, dynamic> json) =>
    PhasesResponse(
      phases:
          (json['phases'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PhasesResponseToJson(PhasesResponse instance) =>
    <String, dynamic>{
      'phases': instance.phases,
    };
