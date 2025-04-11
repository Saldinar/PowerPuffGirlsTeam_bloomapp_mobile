part of 'all_orders_bloc.dart';

sealed class AllOrdersState extends Equatable {
  const AllOrdersState();
}

final class AllOrdersInitial extends AllOrdersState {
  @override
  List<Object> get props => [];
}

final class AllOrdersLoading extends AllOrdersState {
  @override
  List<Object> get props => [];
}

final class AllOrdersLoaded extends AllOrdersState {
  AllOrdersLoaded({required this.orders});

  final OrdersEntity orders;
  @override
  List<Object> get props => [orders];
}

final class AllOrdersError extends AllOrdersState {
  AllOrdersError({required this.message});

  final String message;
  @override
  List<Object> get props => [message];
}
