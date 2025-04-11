import 'package:amamini_client/features/presentation/bloc/reward_points/all_reward_points/all_reward_points_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RewardPointsViewModel {
  void getRewardPoints(BuildContext context) {
    context.read<AllRewardPointsBloc>().add(GetAllRewardPointsEvent());
  }
}
