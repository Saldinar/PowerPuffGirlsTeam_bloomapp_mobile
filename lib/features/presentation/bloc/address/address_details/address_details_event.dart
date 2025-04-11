part of 'address_details_bloc.dart';

sealed class AddressDetailsEvent extends Equatable {
  const AddressDetailsEvent();
}

final class GetAddressDetailsEvent extends AddressDetailsEvent {
  final int addressId;

  GetAddressDetailsEvent({required this.addressId});

  @override
  List<Object?> get props => [];
}
