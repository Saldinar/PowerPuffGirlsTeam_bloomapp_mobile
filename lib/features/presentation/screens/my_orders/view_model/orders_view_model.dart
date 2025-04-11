import 'package:amamini_client/features/presentation/bloc/orders/all_orders/all_orders_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersViewModel {
  void getOrders(BuildContext context) {
    context.read<AllOrdersBloc>().add(GetAllOrdersEvent());
  }
}
