part of 'register_bloc.dart';

sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterInProgress extends RegisterState {}

final class RegisterSuccess extends RegisterState {}

final class RegisterFailure extends RegisterState {
  RegisterFailure({required this.message});

  final String message;
}
