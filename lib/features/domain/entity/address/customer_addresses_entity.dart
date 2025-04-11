import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/address.dart';
import 'package:equatable/equatable.dart';

class CustomerAddressesEntity extends Equatable {
  final List<AddressEntity>? addresses;
  final CustomPropertiesEntity? customProperties;

  CustomerAddressesEntity({
    required this.addresses,
    required this.customProperties,
  });

  @override
  List<Object?> get props => [addresses, customProperties];
}
