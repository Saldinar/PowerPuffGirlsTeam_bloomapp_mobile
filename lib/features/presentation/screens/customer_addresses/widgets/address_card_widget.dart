// ignore_for_file: use_build_context_synchronously

import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/address.dart';
import 'package:amamini_client/features/presentation/bloc/address/delete_address/delete_address_bloc.dart';
import 'package:amamini_client/features/presentation/screens/customer_addresses/view_model/address_view_model.dart';
import 'package:amamini_client/features/presentation/screens/customer_addresses/widgets/address_info_text.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AddressCard extends StatefulWidget {
  final AddressEntity address;
  const AddressCard({required this.address, super.key});

  @override
  State<AddressCard> createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  final _viewModel = AddressViewModel();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MainDecoratedContainer(
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.unit1_5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${widget.address.firstName} ${widget.address.lastName}',
              style: theme.textTheme.titleSmall,
            ),
            const SizedBox(height: Dimensions.unit2),
            AddressInfoText(
              title: S.of(context).email1,
              value: widget.address.email!,
            ),
            AddressInfoText(
              title: S.of(context).phone,
              value: widget.address.phoneNumber!,
            ),
            widget.address.faxNumber != null
                ? AddressInfoText(
                    title: S.of(context).fax,
                    value: widget.address.faxNumber!,
                  )
                : const SizedBox.shrink(),
            widget.address.company != null
                ? AddressInfoText(value: widget.address.company!)
                : const SizedBox.shrink(),
            AddressInfoText(value: widget.address.address1!),
            AddressInfoText(value: widget.address.address2!),
            AddressInfoText(
              value: '${widget.address.city}, ${widget.address.zipPostalCode}',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BlocListener<DeleteAddressBloc, DeleteAddressState>(
                  listener: (context, state) {
                    if (state is DeleteAddressLoaded) {
                      _viewModel.getCustomerAddresses(context);
                    } else if (state is DeleteAddressLoading) {
                    } else if (state is DeleteAddressError) {}
                  },
                  child: OpacityBorderedButton(
                    borderRadius: Dimensions.unit2_5,
                    name: S.of(context).delete,
                    onPressed: () {
                      _viewModel.deleteAddress(context, widget.address.id!);
                    },
                  ),
                ),
                const SizedBox(width: Dimensions.unit1_5),
                MainElevatedButton(
                  title: S.of(context).edit,
                  onPressed: () {
                    _goToUpdateAddressScreen();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _goToUpdateAddressScreen() {
    context
        .pushNamed(
      Routes.updateAddressPage.name,
      extra: widget.address.id,
    )
        .then((result) {
      if (result != null && result == true) {
        _viewModel.getCustomerAddresses(context);
      }
    });
  }

  // Future<void> _showDeleteDialog() {
  //   final deleteAddressBloc = context.read<DeleteAddressBloc>();
  //   return showDialog(
  //     context: context,
  //     builder: (context) {
  //       return BlocProvider.value(
  //         value: deleteAddressBloc,
  //         child: BlocListener<DeleteAddressBloc, DeleteAddressState>(
  //           listener: (context, state) {
  //             if (state is DeleteAddressLoaded) {
  //               print(state);
  //               _viewModel.getCustomerAddresses(context);
  //             } else if (state is DeleteAddressLoading) {
  //               print(state);
  //             } else if (state is DeleteAddressError) {
  //               print(state);
  //             }
  //           },
  //           child: AlertDialogWithConfirmation(
  //             title: S.of(context).deleteAddress,
  //             text: S.of(context).deleteAddressMessage,
  //             confirmationText: S.of(context).delete,
  //             rejectionText: S.of(context).cancel,
  //             onConfirm: () => _deleteAddress(),
  //             onReject: () => context.pop(),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
  //
  // void _deleteAddress() {
  //   context.pop();
  //   _viewModel.deleteAddress(
  //     context,
  //     widget.address.id!,
  //   );
  // }
}
