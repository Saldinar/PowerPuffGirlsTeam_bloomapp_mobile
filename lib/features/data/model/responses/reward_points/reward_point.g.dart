// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardPointItemResponse _$RewardPointItemResponseFromJson(
        Map<String, dynamic> json) =>
    RewardPointItemResponse(
      points: (json['points'] as num?)?.toInt(),
      pointsBalance: json['points_balance'] as String?,
      message: json['message'] as String?,
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RewardPointItemResponseToJson(
        RewardPointItemResponse instance) =>
    <String, dynamic>{
      'points': instance.points,
      'points_balance': instance.pointsBalance,
      'message': instance.message,
      'created_on': instance.createdOn?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
