part of 'update_customer_bloc.dart';

sealed class UpdateCustomerState extends Equatable {
  const UpdateCustomerState();
}

final class UpdateCustomerInitial extends UpdateCustomerState {
  @override
  List<Object> get props => [];
}

final class UpdateCustomerLoading extends UpdateCustomerState {
  @override
  List<Object> get props => [];
}

final class UpdateCustomerLoaded extends UpdateCustomerState {
  @override
  List<Object> get props => [];
}

final class UpdateCustomerError extends UpdateCustomerState {
  final String message;

  UpdateCustomerError({required this.message});

  @override
  List<Object> get props => [message];
}
