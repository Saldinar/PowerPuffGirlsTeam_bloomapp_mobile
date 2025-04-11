import 'package:amamini_client/features/domain/entity/orders_entity/orders_entity.dart';
import 'package:amamini_client/features/domain/use_case/orders/orders_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'all_orders_event.dart';
part 'all_orders_state.dart';

class AllOrdersBloc extends Bloc<AllOrdersEvent, AllOrdersState> {
  final OrdersUseCase _ordersUseCase;
  AllOrdersBloc(this._ordersUseCase) : super(AllOrdersInitial()) {
    on<GetAllOrdersEvent>(_getOrders);
  }
  Future<void> _getOrders(
    GetAllOrdersEvent event,
    Emitter<AllOrdersState> emit,
  ) async {
    emit(AllOrdersLoading());
    final result = await _ordersUseCase.getOrders();
    result.fold(
      (failure) => emit(AllOrdersError(message: failure.message)),
      (success) => emit(AllOrdersLoaded(orders: success)),
    );
  }
}
