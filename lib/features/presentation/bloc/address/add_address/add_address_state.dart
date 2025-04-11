part of 'add_address_bloc.dart';

sealed class AddAddressState extends Equatable {
  const AddAddressState();
}

final class AddAddressInitial extends AddAddressState {
  @override
  List<Object> get props => [];
}

final class AddAddressLoading extends AddAddressState {
  @override
  List<Object> get props => [];
}

final class AddAddressLoaded extends AddAddressState {
  @override
  List<Object> get props => [];
}

final class AddAddressError extends AddAddressState {
  final String message;

  AddAddressError({required this.message});

  @override
  List<Object> get props => [message];
}
