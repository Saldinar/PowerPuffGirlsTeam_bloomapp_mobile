import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/address.dart';
import 'package:equatable/equatable.dart';

class AddAddressModelEntity extends Equatable {
  final AddressEntity? address;
  final CustomPropertiesEntity? customProperties;

  AddAddressModelEntity({this.address, this.customProperties});

  AddAddressModelEntity copyWith({
    AddressEntity? address,
    CustomPropertiesEntity? customProperties,
  }) {
    return AddAddressModelEntity(
      address: address ?? this.address,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props => [address, customProperties];
}
