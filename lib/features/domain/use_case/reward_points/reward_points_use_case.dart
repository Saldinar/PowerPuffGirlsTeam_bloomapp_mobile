import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/reward_points/reward_points_entity.dart';
import 'package:amamini_client/features/domain/repository/reward_points_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class RewardPointsUseCase {
  final RewardPointsRepository _repository;

  RewardPointsUseCase(this._repository);

  Future<Either<Failure, RewardPointsEntity>> getRewardPoints() async {
    return _repository.getRewardPoints();
  }
}
