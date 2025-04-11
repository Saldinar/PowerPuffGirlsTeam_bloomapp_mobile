part of 'delete_address_bloc.dart';

sealed class DeleteAddressState extends Equatable {
  const DeleteAddressState();
}

final class DeleteAddressInitial extends DeleteAddressState {
  @override
  List<Object> get props => [];
}

final class DeleteAddressLoading extends DeleteAddressState {
  @override
  List<Object> get props => [];
}

final class DeleteAddressLoaded extends DeleteAddressState {
  @override
  List<Object> get props => [];
}

final class DeleteAddressError extends DeleteAddressState {
  final String message;

  DeleteAddressError({required this.message});

  @override
  List<Object> get props => [message];
}
