part of 'auth_bloc.dart';

sealed class AuthEvent {}

final class AuthCustomerEvent extends AuthEvent {
  final AuthRequestEntity request;
  AuthCustomerEvent({required this.request});
}

final class CheckCustomerAuthEvent extends AuthEvent {
  final AuthRequestEntity request;

  CheckCustomerAuthEvent({required this.request});
}

final class LogOutEvent extends AuthEvent {}

final class CheckUserStatusEvent extends AuthEvent {}

final class GetTokenEvent extends AuthEvent {}
