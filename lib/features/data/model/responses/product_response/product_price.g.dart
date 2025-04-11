// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductPriceResponse _$ProductPriceResponseFromJson(
        Map<String, dynamic> json) =>
    ProductPriceResponse(
      price: json['price'] as String?,
      oldPrice: json['old_price'] as String?,
      oldPriceValue: (json['old_price_value'] as num?)?.toInt(),
      priceValue: (json['price_value'] as num?)?.toInt(),
      basePricePAngV: json['base_price_p_ang_v'] as String?,
      basePricePAngVValue: (json['base_price_p_ang_v_value'] as num?)?.toInt(),
      disableBuyButton: json['disable_buy_button'] as bool?,
      disableWishlistButton: json['disable_wishlist_button'] as bool?,
      disableAddToCompareListButton:
          json['disable_add_to_compare_list_button'] as bool?,
      availableForPreOrder: json['available_for_pre_order'] as bool?,
      preOrderAvailabilityStartDateTimeUtc:
          json['pre_order_availability_start_date_time_utc'] == null
              ? null
              : DateTime.parse(
                  json['pre_order_availability_start_date_time_utc'] as String),
      isRental: json['is_rental'] as bool?,
      forceRedirectionAfterAddingToCart:
          json['force_redirection_after_adding_to_cart'] as bool?,
      displayTaxShippingInfo: json['display_tax_shipping_info'] as bool?,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductPriceResponseToJson(
        ProductPriceResponse instance) =>
    <String, dynamic>{
      'old_price': instance.oldPrice,
      'old_price_value': instance.oldPriceValue,
      'price': instance.price,
      'price_value': instance.priceValue,
      'base_price_p_ang_v': instance.basePricePAngV,
      'base_price_p_ang_v_value': instance.basePricePAngVValue,
      'disable_buy_button': instance.disableBuyButton,
      'disable_wishlist_button': instance.disableWishlistButton,
      'disable_add_to_compare_list_button':
          instance.disableAddToCompareListButton,
      'available_for_pre_order': instance.availableForPreOrder,
      'pre_order_availability_start_date_time_utc':
          instance.preOrderAvailabilityStartDateTimeUtc?.toIso8601String(),
      'is_rental': instance.isRental,
      'force_redirection_after_adding_to_cart':
          instance.forceRedirectionAfterAddingToCart,
      'display_tax_shipping_info': instance.displayTaxShippingInfo,
      'custom_properties': instance.customProperties,
    };
