part of 'customer_info_bloc.dart';

sealed class CustomerInfoState extends Equatable {
  const CustomerInfoState();
}

final class CustomerInfoInitial extends CustomerInfoState {
  @override
  List<Object> get props => [];
}

final class CustomerInfoLoading extends CustomerInfoState {
  @override
  List<Object> get props => [];
}

final class CustomerInfoLoaded extends CustomerInfoState {
  final CustomerInfoEntity customerInfo;

  CustomerInfoLoaded({required this.customerInfo});

  @override
  List<Object> get props => [customerInfo];
}

final class CustomerInfoError extends CustomerInfoState {
  final String message;
  CustomerInfoError({required this.message});

  @override
  List<Object> get props => [message];
}
