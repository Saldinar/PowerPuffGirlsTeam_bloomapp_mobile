part of 'customer_addresses_bloc.dart';

sealed class CustomerAddressesEvent extends Equatable {
  const CustomerAddressesEvent();
}

final class GetCustomerAddressesEvent extends CustomerAddressesEvent {
  @override
  List<Object?> get props => [];
}
