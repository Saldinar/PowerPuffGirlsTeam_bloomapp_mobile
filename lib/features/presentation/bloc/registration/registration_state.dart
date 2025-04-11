part of 'registration_bloc.dart';

sealed class RegistrationState extends Equatable {
  const RegistrationState();
}

final class RegistrationInitial extends RegistrationState {
  @override
  List<Object> get props => [];
}

final class RegistrationLoading extends RegistrationState {
  @override
  List<Object> get props => [];
}

final class RegistrationLoaded extends RegistrationState {
  RegistrationLoaded({required this.customerInfo});

  final CustomerInfoEntity customerInfo;
  @override
  List<Object> get props => [customerInfo];
}

final class RegistrationError extends RegistrationState {
  RegistrationError({required this.message});

  final String message;
  @override
  List<Object> get props => [message];
}
