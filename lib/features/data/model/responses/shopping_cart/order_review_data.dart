import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_review_data.g.dart';

@JsonSerializable()
class OrderReviewDataResponse {
  final bool? display;
  @JsonKey(name: 'billing_address')
  final AddressResponse? billingAddress;
  @JsonKey(name: 'is_shippable')
  final bool? isShippable;
  @JsonKey(name: 'shipping_address')
  final AddressResponse? shippingAddress;
  @JsonKey(name: 'selected_pickup_in_store')
  final bool? selectedPickupInStore;
  @JsonKey(name: 'pickup_address')
  final AddressResponse? pickupAddress;
  @JsonKey(name: 'shipping_method')
  final String? shippingMethod;
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @JsonKey(name: 'custom_values')
  final CustomPropertiesResponse? customValues;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const OrderReviewDataResponse({
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

  factory OrderReviewDataResponse.fromJson(Map<String, dynamic> json) {
    return _$OrderReviewDataResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderReviewDataResponseToJson(this);
}
