part of 'address_details_bloc.dart';

sealed class AddressDetailsState extends Equatable {
  const AddressDetailsState();
}

final class AddressDetailsInitial extends AddressDetailsState {
  @override
  List<Object> get props => [];
}

final class AddressDetailsLoading extends AddressDetailsState {
  @override
  List<Object> get props => [];
}

final class AddressDetailsLoaded extends AddressDetailsState {
  final AddAddressModelEntity addressDetails;

  AddressDetailsLoaded({required this.addressDetails});

  @override
  List<Object> get props => [addressDetails];
}

final class AddressDetailsError extends AddressDetailsState {
  final String message;

  AddressDetailsError({required this.message});

  @override
  List<Object> get props => [message];
}
