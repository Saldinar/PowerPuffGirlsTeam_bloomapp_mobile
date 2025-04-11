import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/return_requests/all_return_requests/all_return_requests_bloc.dart';
import 'package:amamini_client/features/presentation/screens/return_requests/view_model/return_requests_view_model.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReturnRequestsScreen extends StatelessWidget {
  const ReturnRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllReturnRequestsBloc(inject()),
      child: const ReturnRequestsView(),
    );
  }
}

class ReturnRequestsView extends StatefulWidget {
  const ReturnRequestsView({super.key});

  @override
  State<ReturnRequestsView> createState() => _ReturnRequestsViewState();
}

class _ReturnRequestsViewState extends State<ReturnRequestsView> {
  final _viewModel = ReturnRequestsViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.getReturnRequests(context);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).returnRequests),
      body: BlocBuilder<AllReturnRequestsBloc, AllReturnRequestsState>(
        builder: (context, state) {
          if (state is AllReturnRequestsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is AllReturnRequestsLoaded) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: Dimensions.unit2),
                  Center(
                    child: Text(
                      S.of(context).noReturnRequests,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            );
          } else if (state is AllReturnRequestsError) {
            return AppErrorWidget(
              message: state.message,
              onPressed: () => _viewModel.getReturnRequests(context),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
