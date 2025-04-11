import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reward_point.g.dart';

@JsonSerializable()
class RewardPointItemResponse {
  final int? points;
  @JsonKey(name: 'points_balance')
  final String? pointsBalance;
  final String? message;
  @JsonKey(name: 'created_on')
  final DateTime? createdOn;
  @JsonKey(name: 'end_date')
  final DateTime? endDate;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const RewardPointItemResponse({
    this.points,
    this.pointsBalance,
    this.message,
    this.createdOn,
    this.endDate,
    this.id,
    this.customProperties,
  });

  factory RewardPointItemResponse.fromJson(Map<String, dynamic> json) {
    return _$RewardPointItemResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RewardPointItemResponseToJson(this);
}
