// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CycleRequest _$CycleRequestFromJson(Map<String, dynamic> json) => CycleRequest(
      lastPeriodDate: json['lastPeriodDate'] as String,
      cycleLength: (json['cycleLength'] as num).toInt(),
      periodLength: (json['periodLength'] as num).toInt(),
      age: (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$CycleRequestToJson(CycleRequest instance) =>
    <String, dynamic>{
      'lastPeriodDate': instance.lastPeriodDate,
      'cycleLength': instance.cycleLength,
      'periodLength': instance.periodLength,
      'age': instance.age,
    };
