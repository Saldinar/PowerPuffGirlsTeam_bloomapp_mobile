import 'package:amamini_client/features/presentation/bloc/address/customer_addresses/customer_addresses_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/address/delete_address/delete_address_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressViewModel {
  void getCustomerAddresses(BuildContext context) {
    context.read<CustomerAddressesBloc>().add(GetCustomerAddressesEvent());
  }

  void deleteAddress(BuildContext context, int addressId) {
    context
        .read<DeleteAddressBloc>()
        .add(DeleteCurrentAddressEvent(addressId: addressId));
  }
}
