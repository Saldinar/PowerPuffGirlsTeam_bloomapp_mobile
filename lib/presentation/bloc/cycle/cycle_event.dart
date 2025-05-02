part of 'cycle_bloc.dart';

sealed class CycleEvent {}

final class RegisterUserEvent extends CycleEvent {
  RegisterUserEvent({required this.request});

  final RegisterRequestEntity request;
}

final class LogOutEvent extends CycleEvent {}
