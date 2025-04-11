import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/orders/all_orders/all_orders_bloc.dart';
import 'package:amamini_client/features/presentation/screens/my_orders/view_model/orders_view_model.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllOrdersBloc(inject()),
      child: const MyOrdersView(),
    );
  }
}

class MyOrdersView extends StatefulWidget {
  const MyOrdersView({super.key});

  @override
  State<MyOrdersView> createState() => _MyOrdersViewState();
}

class _MyOrdersViewState extends State<MyOrdersView> {
  final _viewModel = OrdersViewModel();
  @override
  void initState() {
    super.initState();
    _viewModel.getOrders(context);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).myOrders),
      body: BlocBuilder<AllOrdersBloc, AllOrdersState>(
        builder: (context, state) {
          if (state is AllOrdersLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is AllOrdersLoaded) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: Dimensions.unit3),
                  if (state.orders.orders!.isEmpty)
                    Center(
                      child: Text(
                        S.of(context).noOrders,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                ],
              ),
            );
          } else if (state is AllOrdersError) {
            return AppErrorWidget(
              message: state.message,
              onPressed: () {},
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
