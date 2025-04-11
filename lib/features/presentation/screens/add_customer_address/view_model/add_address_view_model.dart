import 'package:amamini_client/features/domain/entity/address/add_address_entity.dart';
import 'package:amamini_client/features/domain/entity/address/add_address_model_entity.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/address.dart';
import 'package:amamini_client/features/presentation/bloc/address/add_address/add_address_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAddressViewModel {
  void addAddress(BuildContext context, AddressEntity addressData) {
    final customProperties = CustomPropertiesEntity(
      additionalProp1: '',
      additionalProp2: '',
      additionalProp3: '',
    );
    final request = AddAddressEntity(
      model: AddAddressModelEntity(
        address: addressData,
        customProperties: customProperties,
      ),
      form: customProperties,
    );
    context.read<AddAddressBloc>().add(AddNewAddressEvent(request: request));
  }
}
