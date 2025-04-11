import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/address.dart';
import 'package:equatable/equatable.dart';

class OrderReviewDataEntity extends Equatable {
  final bool? display;
  final AddressEntity? billingAddress;
  final bool? isShippable;
  final AddressEntity? shippingAddress;
  final bool? selectedPickupInStore;
  final AddressEntity? pickupAddress;
  final String? shippingMethod;
  final String? paymentMethod;
  final CustomPropertiesEntity? customValues;
  final CustomPropertiesEntity? customProperties;

  const OrderReviewDataEntity({
    this.display,
    this.billingAddress,
    this.isShippable,
    this.shippingAddress,
    this.selectedPickupInStore,
    this.pickupAddress,
    this.shippingMethod,
    this.paymentMethod,
    this.customValues,
    this.customProperties,
  });

  OrderReviewDataEntity copyWith({
    bool? display,
    AddressEntity? billingAddress,
    bool? isShippable,
    AddressEntity? shippingAddress,
    bool? selectedPickupInStore,
    AddressEntity? pickupAddress,
    String? shippingMethod,
    String? paymentMethod,
    CustomPropertiesEntity? customValues,
    CustomPropertiesEntity? customProperties,
  }) {
    return OrderReviewDataEntity(
      display: display ?? this.display,
      billingAddress: billingAddress ?? this.billingAddress,
      isShippable: isShippable ?? this.isShippable,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      selectedPickupInStore:
          selectedPickupInStore ?? this.selectedPickupInStore,
      pickupAddress: pickupAddress ?? this.pickupAddress,
      shippingMethod: shippingMethod ?? this.shippingMethod,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      customValues: customValues ?? this.customValues,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      display,
      billingAddress,
      isShippable,
      shippingAddress,
      selectedPickupInStore,
      pickupAddress,
      shippingMethod,
      paymentMethod,
      customValues,
      customProperties,
    ];
  }
}
