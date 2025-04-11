import 'package:amamini_client/features/domain/entity/address/add_address_entity.dart';
import 'package:amamini_client/features/domain/entity/address/add_address_model_entity.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/address.dart';
import 'package:amamini_client/features/presentation/bloc/address/address_details/address_details_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/address/update_address/update_address_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateAddressViewModel {
  void updateAddress(BuildContext context, AddressEntity address) {
    final customProperties = CustomPropertiesEntity(
      additionalProp1: '',
      additionalProp2: '',
      additionalProp3: '',
    );
    final request = AddAddressEntity(
      model: AddAddressModelEntity(
        address: address,
        customProperties: customProperties,
      ),
      form: customProperties,
    );
    context
        .read<UpdateAddressBloc>()
        .add(UpdateAddressDetailsEvent(request: request));
  }

  void getAddressDetails(BuildContext context, int addressId) {
    context
        .read<AddressDetailsBloc>()
        .add(GetAddressDetailsEvent(addressId: addressId));
  }
}
