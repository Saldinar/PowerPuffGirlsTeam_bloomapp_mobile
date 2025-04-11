part of 'all_reward_points_bloc.dart';

sealed class AllRewardPointsEvent extends Equatable {
  const AllRewardPointsEvent();
}

final class GetAllRewardPointsEvent extends AllRewardPointsEvent {
  @override
  List<Object?> get props => [];
}
