// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_points_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardPointsResponse _$RewardPointsResponseFromJson(
        Map<String, dynamic> json) =>
    RewardPointsResponse(
      rewardPoints: (json['reward_points'] as List<dynamic>?)
          ?.map((e) =>
              RewardPointItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagerModel: json['pager_model'] == null
          ? null
          : PagerModelResponse.fromJson(
              json['pager_model'] as Map<String, dynamic>),
      rewardPointsBalance: (json['reward_points_balance'] as num?)?.toInt(),
      rewardPointsAmount: json['reward_points_amount'] as String?,
      minimumRewardPointsBalance:
          (json['minimum_reward_points_balance'] as num?)?.toInt(),
      minimumRewardPointsAmount:
          json['minimum_reward_points_amount'] as String?,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RewardPointsResponseToJson(
        RewardPointsResponse instance) =>
    <String, dynamic>{
      'reward_points': instance.rewardPoints,
      'pager_model': instance.pagerModel,
      'reward_points_balance': instance.rewardPointsBalance,
      'reward_points_amount': instance.rewardPointsAmount,
      'minimum_reward_points_balance': instance.minimumRewardPointsBalance,
      'minimum_reward_points_amount': instance.minimumRewardPointsAmount,
      'custom_properties': instance.customProperties,
    };
