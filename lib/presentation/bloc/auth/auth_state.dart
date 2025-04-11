part of 'auth_bloc.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthLoaded extends AuthState {}

final class GuestLoaded extends AuthState {}

final class AuthError extends AuthState {
  final String message;
  AuthError({required this.message});
}
