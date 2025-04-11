part of 'update_address_bloc.dart';

sealed class UpdateAddressState extends Equatable {
  const UpdateAddressState();
}

final class UpdateAddressInitial extends UpdateAddressState {
  @override
  List<Object> get props => [];
}

final class UpdateAddressLoading extends UpdateAddressState {
  @override
  List<Object> get props => [];
}

final class UpdateAddressLoaded extends UpdateAddressState {
  @override
  List<Object> get props => [];
}

final class UpdateAddressError extends UpdateAddressState {
  final String message;

  UpdateAddressError({required this.message});

  @override
  List<Object> get props => [message];
}
