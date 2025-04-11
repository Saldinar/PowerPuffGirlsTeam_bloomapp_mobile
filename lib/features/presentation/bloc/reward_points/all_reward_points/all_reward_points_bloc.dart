import 'package:amamini_client/features/domain/entity/reward_points/reward_points_entity.dart';
import 'package:amamini_client/features/domain/use_case/reward_points/reward_points_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'all_reward_points_event.dart';
part 'all_reward_points_state.dart';

class AllRewardPointsBloc
    extends Bloc<AllRewardPointsEvent, AllRewardPointsState> {
  final RewardPointsUseCase _useCase;
  AllRewardPointsBloc(this._useCase) : super(AllRewardPointsInitial()) {
    on<GetAllRewardPointsEvent>(_getRewardPoints);
  }
  Future<void> _getRewardPoints(
    GetAllRewardPointsEvent event,
    Emitter<AllRewardPointsState> emit,
  ) async {
    emit(AllRewardPointsLoading());
    final result = await _useCase.getRewardPoints();
    result.fold(
      (failure) => emit(AllRewardPointsError(message: failure.message)),
      (success) => emit(AllRewardPointsLoaded(rewardPoints: success)),
    );
  }
}
