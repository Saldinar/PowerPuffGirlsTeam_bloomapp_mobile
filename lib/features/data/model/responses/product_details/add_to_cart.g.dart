// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartResponse _$AddToCartResponseFromJson(Map<String, dynamic> json) =>
    AddToCartResponse(
      productId: (json['product_id'] as num?)?.toInt(),
      enteredQuantity: (json['entered_quantity'] as num?)?.toInt(),
      minimumQuantityNotification:
          json['minimum_quantity_notification'] as String?,
      allowedQuantities: (json['allowed_quantities'] as List<dynamic>?)
          ?.map((e) =>
              AllowedQuantityResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      customerEntersPrice: json['customer_enters_price'] as bool?,
      customerEnteredPrice: (json['customer_entered_price'] as num?)?.toInt(),
      customerEnteredPriceRange:
          json['customer_entered_price_range'] as String?,
      disableBuyButton: json['disable_buy_button'] as bool?,
      disableWishlistButton: json['disable_wishlist_button'] as bool?,
      isRental: json['is_rental'] as bool?,
      availableForPreOrder: json['available_for_pre_order'] as bool?,
      preOrderAvailabilityStartDateTimeUtc:
          json['pre_order_availability_start_date_time_utc'] == null
              ? null
              : DateTime.parse(
                  json['pre_order_availability_start_date_time_utc'] as String),
      preOrderAvailabilityStartDateTimeUserTime:
          json['pre_order_availability_start_date_time_user_time'] as String?,
      updatedShoppingCartItemId:
          (json['updated_shopping_cart_item_id'] as num?)?.toInt(),
      updateShoppingCartItemType:
          json['update_shopping_cart_item_type'] as String?,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddToCartResponseToJson(AddToCartResponse instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'entered_quantity': instance.enteredQuantity,
      'minimum_quantity_notification': instance.minimumQuantityNotification,
      'allowed_quantities': instance.allowedQuantities,
      'customer_enters_price': instance.customerEntersPrice,
      'customer_entered_price': instance.customerEnteredPrice,
      'customer_entered_price_range': instance.customerEnteredPriceRange,
      'disable_buy_button': instance.disableBuyButton,
      'disable_wishlist_button': instance.disableWishlistButton,
      'is_rental': instance.isRental,
      'available_for_pre_order': instance.availableForPreOrder,
      'pre_order_availability_start_date_time_utc':
          instance.preOrderAvailabilityStartDateTimeUtc?.toIso8601String(),
      'pre_order_availability_start_date_time_user_time':
          instance.preOrderAvailabilityStartDateTimeUserTime,
      'updated_shopping_cart_item_id': instance.updatedShoppingCartItemId,
      'update_shopping_cart_item_type': instance.updateShoppingCartItemType,
      'custom_properties': instance.customProperties,
    };
