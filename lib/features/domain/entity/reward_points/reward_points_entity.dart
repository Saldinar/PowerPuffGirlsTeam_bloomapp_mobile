import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/reward_points/pager_model.dart';
import 'package:amamini_client/features/domain/entity/reward_points/reward_point.dart';
import 'package:equatable/equatable.dart';

class RewardPointsEntity extends Equatable {
  final List<RewardPointItemEntity>? rewardPoints;
  final PagerModelEntity? pagerModel;
  final int? rewardPointsBalance;
  final String? rewardPointsAmount;
  final int? minimumRewardPointsBalance;
  final String? minimumRewardPointsAmount;
  final CustomPropertiesEntity? customProperties;

  const RewardPointsEntity({
    this.rewardPoints,
    this.pagerModel,
    this.rewardPointsBalance,
    this.rewardPointsAmount,
    this.minimumRewardPointsBalance,
    this.minimumRewardPointsAmount,
    this.customProperties,
  });

  RewardPointsEntity copyWith({
    List<RewardPointItemEntity>? rewardPoints,
    PagerModelEntity? pagerModel,
    int? rewardPointsBalance,
    String? rewardPointsAmount,
    int? minimumRewardPointsBalance,
    String? minimumRewardPointsAmount,
    CustomPropertiesEntity? customProperties,
  }) {
    return RewardPointsEntity(
      rewardPoints: rewardPoints ?? this.rewardPoints,
      pagerModel: pagerModel ?? this.pagerModel,
      rewardPointsBalance: rewardPointsBalance ?? this.rewardPointsBalance,
      rewardPointsAmount: rewardPointsAmount ?? this.rewardPointsAmount,
      minimumRewardPointsBalance:
          minimumRewardPointsBalance ?? this.minimumRewardPointsBalance,
      minimumRewardPointsAmount:
          minimumRewardPointsAmount ?? this.minimumRewardPointsAmount,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      rewardPoints,
      pagerModel,
      rewardPointsBalance,
      rewardPointsAmount,
      minimumRewardPointsBalance,
      minimumRewardPointsAmount,
      customProperties,
    ];
  }
}
