part of 'change_password_bloc.dart';

sealed class ChangePasswordEvent extends Equatable {
  const ChangePasswordEvent();
}

final class ChangeCustomerPasswordEvent extends ChangePasswordEvent {
  final ChangePasswordEntity request;

  ChangeCustomerPasswordEvent({required this.request});

  @override
  List<Object?> get props => [request];
}
