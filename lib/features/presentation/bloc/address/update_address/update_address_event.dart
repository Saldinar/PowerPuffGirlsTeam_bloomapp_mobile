part of 'update_address_bloc.dart';

sealed class UpdateAddressEvent extends Equatable {
  const UpdateAddressEvent();
}

final class UpdateAddressDetailsEvent extends UpdateAddressEvent {
  final AddAddressEntity request;

  UpdateAddressDetailsEvent({required this.request});

  @override
  List<Object?> get props => [];
}
