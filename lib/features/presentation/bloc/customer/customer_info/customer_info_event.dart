part of 'customer_info_bloc.dart';

sealed class CustomerInfoEvent extends Equatable {
  const CustomerInfoEvent();
}

final class GetCustomerInfoEvent extends CustomerInfoEvent {
  @override
  List<Object?> get props => [];
}
