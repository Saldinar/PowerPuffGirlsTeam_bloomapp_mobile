part of 'cycle_bloc.dart';

sealed class CycleState {}

final class RegisterInitial extends CycleState {}

final class RegisterInProgress extends CycleState {}

final class RegisterSuccess extends CycleState {}

final class RegisterFailure extends CycleState {
  RegisterFailure({required this.message});

  final String message;
}
