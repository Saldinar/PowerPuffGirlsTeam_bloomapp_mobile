part of 'update_customer_bloc.dart';

sealed class UpdateCustomerEvent extends Equatable {
  const UpdateCustomerEvent();
}

final class UpdateCustomerInfoEvent extends UpdateCustomerEvent {
  final RegistrationModelEntity request;

  UpdateCustomerInfoEvent(this.request);

  @override
  List<Object?> get props => [];
}
