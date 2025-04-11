part of 'add_address_bloc.dart';

sealed class AddAddressEvent extends Equatable {
  const AddAddressEvent();
}

final class AddNewAddressEvent extends AddAddressEvent {
  final AddAddressEntity request;

  AddNewAddressEvent({required this.request});

  @override
  List<Object?> get props => [];
}
