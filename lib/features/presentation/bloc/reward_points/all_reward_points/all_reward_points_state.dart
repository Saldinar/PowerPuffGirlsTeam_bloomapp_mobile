part of 'all_reward_points_bloc.dart';

sealed class AllRewardPointsState extends Equatable {
  const AllRewardPointsState();
}

final class AllRewardPointsInitial extends AllRewardPointsState {
  @override
  List<Object> get props => [];
}

final class AllRewardPointsLoading extends AllRewardPointsState {
  @override
  List<Object> get props => [];
}

final class AllRewardPointsLoaded extends AllRewardPointsState {
  final RewardPointsEntity rewardPoints;

  AllRewardPointsLoaded({required this.rewardPoints});

  @override
  List<Object> get props => [rewardPoints];
}

final class AllRewardPointsError extends AllRewardPointsState {
  final String message;

  AllRewardPointsError({required this.message});

  @override
  List<Object> get props => [message];
}
