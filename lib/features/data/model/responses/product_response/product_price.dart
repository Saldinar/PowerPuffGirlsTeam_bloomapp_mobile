// ignore_for_file: sort_constructors_first
import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_price.g.dart';

@JsonSerializable()
class ProductPriceResponse {
  ProductPriceResponse({
    this.price,
    this.oldPrice,
    this.oldPriceValue,
    this.priceValue,
    this.basePricePAngV,
    this.basePricePAngVValue,
    this.disableBuyButton,
    this.disableWishlistButton,
    this.disableAddToCompareListButton,
    this.availableForPreOrder,
    this.preOrderAvailabilityStartDateTimeUtc,
    this.isRental,
    this.forceRedirectionAfterAddingToCart,
    this.displayTaxShippingInfo,
    this.customProperties,
  });

  @JsonKey(name: 'old_price')
  final String? oldPrice;
  @JsonKey(name: 'old_price_value')
  final int? oldPriceValue;
  final String? price;
  @JsonKey(name: 'price_value')
  final int? priceValue;
  @JsonKey(name: 'base_price_p_ang_v')
  final String? basePricePAngV;
  @JsonKey(name: 'base_price_p_ang_v_value')
  final int? basePricePAngVValue;
  @JsonKey(name: 'disable_buy_button')
  final bool? disableBuyButton;
  @JsonKey(name: 'disable_wishlist_button')
  final bool? disableWishlistButton;
  @JsonKey(name: 'disable_add_to_compare_list_button')
  final bool? disableAddToCompareListButton;
  @JsonKey(name: 'available_for_pre_order')
  final bool? availableForPreOrder;
  @JsonKey(name: 'pre_order_availability_start_date_time_utc')
  final DateTime? preOrderAvailabilityStartDateTimeUtc;
  @JsonKey(name: 'is_rental')
  final bool? isRental;
  @JsonKey(name: 'force_redirection_after_adding_to_cart')
  final bool? forceRedirectionAfterAddingToCart;
  @JsonKey(name: 'display_tax_shipping_info')
  final bool? displayTaxShippingInfo;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  factory ProductPriceResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductPriceResponseFromJson(json);
}
