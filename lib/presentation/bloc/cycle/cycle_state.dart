part of 'cycle_bloc.dart';

sealed class CycleState {}

final class CycleInitial extends CycleState {}

final class CycleLoading extends CycleState {}

final class CycleLoaded extends CycleState {
  CycleLoaded({required this.cycleDetails});

  final UserResponseEntity cycleDetails;
}

final class CycleError extends CycleState {
  CycleError({required this.message});

  final String message;
}
