part of 'delete_address_bloc.dart';

sealed class DeleteAddressEvent extends Equatable {
  const DeleteAddressEvent();
}

final class DeleteCurrentAddressEvent extends DeleteAddressEvent {
  final int addressId;

  DeleteCurrentAddressEvent({required this.addressId});

  @override
  List<Object?> get props => [addressId];
}
