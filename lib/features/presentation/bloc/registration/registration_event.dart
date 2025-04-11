part of 'registration_bloc.dart';

sealed class RegistrationEvent extends Equatable {
  const RegistrationEvent();
}

final class RegisterCustomerEvent extends RegistrationEvent {
  RegisterCustomerEvent({required this.request});

  final RegistrationModelEntity request;
  @override
  List<Object?> get props => [];
}
