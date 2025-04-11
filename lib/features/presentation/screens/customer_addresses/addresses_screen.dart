// ignore_for_file: use_build_context_synchronously

import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/address.dart';
import 'package:amamini_client/features/presentation/bloc/address/customer_addresses/customer_addresses_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/address/delete_address/delete_address_bloc.dart';
import 'package:amamini_client/features/presentation/screens/customer_addresses/view_model/address_view_model.dart';
import 'package:amamini_client/features/presentation/screens/customer_addresses/widgets/customer_addresses_list.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AddressesScreen extends StatefulWidget {
  const AddressesScreen({super.key});

  @override
  State<AddressesScreen> createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CustomerAddressesBloc(inject())),
        BlocProvider(create: (context) => DeleteAddressBloc(inject())),
      ],
      child: const AddressesView(),
    );
  }
}

class AddressesView extends StatefulWidget {
  const AddressesView({super.key});

  @override
  State<AddressesView> createState() => _AddressesViewState();
}

class _AddressesViewState extends State<AddressesView> {
  final _viewModel = AddressViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.getCustomerAddresses(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).myAddresses),
      body: BlocBuilder<CustomerAddressesBloc, CustomerAddressesState>(
        builder: (context, state) {
          if (state is CustomerAddressesLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CustomerAddressesError) {
            return AppErrorWidget(
              message: state.message,
              onPressed: () => _viewModel.getCustomerAddresses(context),
            );
          } else if (state is CustomerAddressesLoaded) {
            final addresses = state.customerAddresses.addresses ?? [];
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.unit,
                vertical: Dimensions.unit1_5,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildAddressesList(addresses),
                    const SizedBox(height: Dimensions.unit2),
                    _buildAddButton(context),
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

  Widget _buildAddressesList(List<AddressEntity> addresses) {
    final theme = Theme.of(context);
    if (addresses.isNotEmpty) {
      return CustomerAddressesList(addresses: addresses);
    } else {
      return Text(
        S.of(context).noAddresses,
        style: theme.textTheme.titleSmall,
      );
    }
  }

  MainElevatedButton _buildAddButton(BuildContext context) {
    return MainElevatedButton(
      width: double.infinity,
      title: S.of(context).addNewAddress,
      onPressed: () {
        context.pushNamed(Routes.addCustomerAddressPage.name).then((result) {
          if (result != null && result == true) {
            _viewModel.getCustomerAddresses(context);
          }
        });
      },
    );
  }
}
