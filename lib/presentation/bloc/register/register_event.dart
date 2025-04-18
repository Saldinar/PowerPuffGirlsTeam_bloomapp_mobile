part of 'register_bloc.dart';

sealed class RegisterEvent {}

final class RegisterUserEvent extends RegisterEvent {
  RegisterUserEvent({required this.request});

  final RegisterRequestEntity request;
}

final class LogOutEvent extends RegisterEvent {}
