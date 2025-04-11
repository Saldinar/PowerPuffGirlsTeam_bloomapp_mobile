import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/reward_points/pager_model.dart';
import 'package:amamini_client/features/data/model/responses/reward_points/reward_point.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reward_points_response.g.dart';

@JsonSerializable()
class RewardPointsResponse {
  @JsonKey(name: 'reward_points')
  final List<RewardPointItemResponse>? rewardPoints;
  @JsonKey(name: 'pager_model')
  final PagerModelResponse? pagerModel;
  @JsonKey(name: 'reward_points_balance')
  final int? rewardPointsBalance;
  @JsonKey(name: 'reward_points_amount')
  final String? rewardPointsAmount;
  @JsonKey(name: 'minimum_reward_points_balance')
  final int? minimumRewardPointsBalance;
  @JsonKey(name: 'minimum_reward_points_amount')
  final String? minimumRewardPointsAmount;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const RewardPointsResponse({
    this.rewardPoints,
    this.pagerModel,
    this.rewardPointsBalance,
    this.rewardPointsAmount,
    this.minimumRewardPointsBalance,
    this.minimumRewardPointsAmount,
    this.customProperties,
  });

  factory RewardPointsResponse.fromJson(Map<String, dynamic> json) {
    return _$RewardPointsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RewardPointsResponseToJson(this);
}
