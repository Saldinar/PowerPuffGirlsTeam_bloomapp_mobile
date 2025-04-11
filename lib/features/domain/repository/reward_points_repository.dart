import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/reward_points/reward_points_entity.dart';
import 'package:dartz/dartz.dart';

abstract class RewardPointsRepository {
  Future<Either<Failure, RewardPointsEntity>> getRewardPoints();
}
