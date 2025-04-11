part of 'all_orders_bloc.dart';

sealed class AllOrdersEvent extends Equatable {
  const AllOrdersEvent();
}

final class GetAllOrdersEvent extends AllOrdersEvent {
  @override
  List<Object?> get props => [];
}
