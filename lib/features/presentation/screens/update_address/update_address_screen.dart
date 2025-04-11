import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/address/address_details/address_details_bloc.dart';
import 'package:amamini_client/features/presentation/screens/update_address/view_model/update_address_view_model.dart';
import 'package:amamini_client/features/presentation/screens/update_address/widgets/update_address_form_widget.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateAddressScreen extends StatefulWidget {
  final int addressId;
  const UpdateAddressScreen({
    required this.addressId,
    super.key,
  });

  @override
  State<UpdateAddressScreen> createState() => _UpdateAddressScreenState();
}

class _UpdateAddressScreenState extends State<UpdateAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddressDetailsBloc(inject()),
      child: UpdateAddressView(
        addressId: widget.addressId,
      ),
    );
  }
}

class UpdateAddressView extends StatefulWidget {
  final int addressId;
  const UpdateAddressView({required this.addressId, super.key});

  @override
  State<UpdateAddressView> createState() => _UpdateAddressViewState();
}

class _UpdateAddressViewState extends State<UpdateAddressView> {
  final _viewModel = UpdateAddressViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.getAddressDetails(context, widget.addressId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).editAddress),
      body: BlocBuilder<AddressDetailsBloc, AddressDetailsState>(
        builder: (context, state) {
          if (state is AddressDetailsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is AddressDetailsLoaded) {
            final addressDetails = state.addressDetails;
            return UpdateAddressFormWidget(addressDetails: addressDetails);
          } else if (state is AddressDetailsError) {
            return AppErrorWidget(
              message: state.message,
              onPressed: () {
                _viewModel.getAddressDetails(context, widget.addressId);
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
