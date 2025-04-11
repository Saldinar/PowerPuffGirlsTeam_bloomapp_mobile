part of 'customer_addresses_bloc.dart';

sealed class CustomerAddressesState extends Equatable {
  const CustomerAddressesState();
}

final class CustomerAddressesInitial extends CustomerAddressesState {
  @override
  List<Object> get props => [];
}

final class CustomerAddressesLoading extends CustomerAddressesState {
  @override
  List<Object> get props => [];
}

final class CustomerAddressesLoaded extends CustomerAddressesState {
  final CustomerAddressesEntity customerAddresses;

  CustomerAddressesLoaded({required this.customerAddresses});

  @override
  List<Object> get props => [customerAddresses];
}

final class CustomerAddressesError extends CustomerAddressesState {
  final String message;

  CustomerAddressesError({required this.message});

  @override
  List<Object> get props => [message];
}
