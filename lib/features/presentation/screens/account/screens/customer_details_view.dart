import 'package:amamini_client/features/presentation/bloc/customer/customer_info/customer_info_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/theme_cubit/theme_cubit.dart';
import 'package:amamini_client/features/presentation/screens/account/view_model/customer_view_model.dart';
import 'package:amamini_client/features/presentation/screens/account/widgets/customer_cards_list.dart';
import 'package:amamini_client/features/presentation/screens/account/widgets/customer_info_widget.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomerDetailsView extends StatefulWidget {
  const CustomerDetailsView({
    super.key,
  });

  @override
  State<CustomerDetailsView> createState() => _CustomerDetailsViewState();
}

class _CustomerDetailsViewState extends State<CustomerDetailsView> {
  final _viewModel = CustomerViewModel();
  @override
  void initState() {
    super.initState();
    _viewModel.getCustomerInfo(context);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state.isDark;
    return Scaffold(
      appBar: _buildMyAccountAppBar(context, _viewModel),
      drawer: const Drawer(),
      body: BlocBuilder<CustomerInfoBloc, CustomerInfoState>(
        builder: (context, state) {
          if (state is CustomerInfoLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CustomerInfoLoaded) {
            return Padding(
              padding: const EdgeInsets.all(Dimensions.unit),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomerInfoWidget(customerEntity: state.customerInfo),
                    const SizedBox(height: Dimensions.unit2),
                    CustomerCardsList(customerInfoEntity: state.customerInfo),
                    const SizedBox(height: Dimensions.unit),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Change theme'),
                        Switch.adaptive(
                          value: isDark,
                          onChanged: (value) => _onThemeChanged(context, value),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  MainAppBar _buildMyAccountAppBar(
    BuildContext context,
    CustomerViewModel viewModel,
  ) {
    return MainAppBar(
      title: S.of(context).myAccount,
      actions: [
        IconButton(
          onPressed: () => _buildLogoutDialog(context, viewModel),
          icon: const Icon(Icons.logout),
        ),
      ],
    );
  }

  Future<dynamic> _buildLogoutDialog(
    BuildContext context,
    CustomerViewModel viewModel,
  ) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialogWithConfirmation(
          title: S.of(context).areYouSure,
          confirmationText: S.of(context).logOut,
          rejectionText: S.of(context).cancel,
          onConfirm: () => viewModel.logOut(context),
          onReject: () => context.pop(),
        );
      },
    );
  }

  void _onThemeChanged(BuildContext context, bool isDark) {
    context.read<ThemeCubit>().setTheme(isDark);
  }
}
