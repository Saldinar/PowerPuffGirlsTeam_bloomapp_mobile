// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WishlistResponse _$WishlistResponseFromJson(Map<String, dynamic> json) =>
    WishlistResponse(
      customerGuid: json['customer_guid'] as String?,
      customerFullname: json['customer_fullname'] as String?,
      emailWishlistEnabled: json['email_wishlist_enabled'] as bool?,
      showSku: json['show_sku'] as bool?,
      showProductImages: json['show_product_images'] as bool?,
      isEditable: json['is_editable'] as bool?,
      displayAddToCart: json['display_add_to_cart'] as bool?,
      displayTaxShippingInfo: json['display_tax_shipping_info'] as bool?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => WishlistItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WishlistResponseToJson(WishlistResponse instance) =>
    <String, dynamic>{
      'customer_guid': instance.customerGuid,
      'customer_fullname': instance.customerFullname,
      'email_wishlist_enabled': instance.emailWishlistEnabled,
      'show_sku': instance.showSku,
      'show_product_images': instance.showProductImages,
      'is_editable': instance.isEditable,
      'display_add_to_cart': instance.displayAddToCart,
      'display_tax_shipping_info': instance.displayTaxShippingInfo,
      'items': instance.items,
      'warnings': instance.warnings,
      'custom_properties': instance.customProperties,
    };
