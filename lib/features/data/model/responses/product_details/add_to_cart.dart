// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product_details/allowed_quantity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart.g.dart';

@JsonSerializable()
class AddToCartResponse {
  @JsonKey(name: 'product_id')
  final int? productId;
  @JsonKey(name: 'entered_quantity')
  final int? enteredQuantity;
  @JsonKey(name: 'minimum_quantity_notification')
  final String? minimumQuantityNotification;
  @JsonKey(name: 'allowed_quantities')
  final List<AllowedQuantityResponse>? allowedQuantities;
  @JsonKey(name: 'customer_enters_price')
  final bool? customerEntersPrice;
  @JsonKey(name: 'customer_entered_price')
  final int? customerEnteredPrice;
  @JsonKey(name: 'customer_entered_price_range')
  final String? customerEnteredPriceRange;
  @JsonKey(name: 'disable_buy_button')
  final bool? disableBuyButton;
  @JsonKey(name: 'disable_wishlist_button')
  final bool? disableWishlistButton;
  @JsonKey(name: 'is_rental')
  final bool? isRental;
  @JsonKey(name: 'available_for_pre_order')
  final bool? availableForPreOrder;
  @JsonKey(name: 'pre_order_availability_start_date_time_utc')
  final DateTime? preOrderAvailabilityStartDateTimeUtc;
  @JsonKey(name: 'pre_order_availability_start_date_time_user_time')
  final String? preOrderAvailabilityStartDateTimeUserTime;
  @JsonKey(name: 'updated_shopping_cart_item_id')
  final int? updatedShoppingCartItemId;
  @JsonKey(name: 'update_shopping_cart_item_type')
  final String? updateShoppingCartItemType;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const AddToCartResponse({
    this.productId,
    this.enteredQuantity,
    this.minimumQuantityNotification,
    this.allowedQuantities,
    this.customerEntersPrice,
    this.customerEnteredPrice,
    this.customerEnteredPriceRange,
    this.disableBuyButton,
    this.disableWishlistButton,
    this.isRental,
    this.availableForPreOrder,
    this.preOrderAvailabilityStartDateTimeUtc,
    this.preOrderAvailabilityStartDateTimeUserTime,
    this.updatedShoppingCartItemId,
    this.updateShoppingCartItemType,
    this.customProperties,
  });

  factory AddToCartResponse.fromJson(Map<String, dynamic> json) {
    return _$AddToCartResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddToCartResponseToJson(this);
}
