import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class RewardPointItemEntity extends Equatable {
  final int? points;
  final String? pointsBalance;
  final String? message;
  final DateTime? createdOn;
  final DateTime? endDate;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const RewardPointItemEntity({
    required this.points,
    required this.pointsBalance,
    required this.message,
    required this.createdOn,
    required this.endDate,
    required this.id,
    required this.customProperties,
  });

  RewardPointItemEntity copyWith({
    int? points,
    String? pointsBalance,
    String? message,
    DateTime? createdOn,
    DateTime? endDate,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return RewardPointItemEntity(
      points: points ?? this.points,
      pointsBalance: pointsBalance ?? this.pointsBalance,
      message: message ?? this.message,
      createdOn: createdOn ?? this.createdOn,
      endDate: endDate ?? this.endDate,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      points,
      pointsBalance,
      message,
      createdOn,
      endDate,
      id,
      customProperties,
    ];
  }
}
