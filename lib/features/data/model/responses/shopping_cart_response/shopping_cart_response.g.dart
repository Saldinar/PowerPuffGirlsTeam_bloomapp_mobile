// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShoppingCartResponse _$ShoppingCartResponseFromJson(
        Map<String, dynamic> json) =>
    ShoppingCartResponse(
      onePageCheckoutEnabled: json['one_page_checkout_enabled'] as bool?,
      showSku: json['show_sku'] as bool?,
      showProductImages: json['show_product_images'] as bool?,
      isEditable: json['is_editable'] as bool?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkoutAttributes: (json['checkout_attributes'] as List<dynamic>?)
          ?.map((e) =>
              CheckoutAttributeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      minOrderSubtotalWarning: json['min_order_subtotal_warning'] as String?,
      displayTaxShippingInfo: json['display_tax_shipping_info'] as bool?,
      termsOfServiceOnShoppingCartPage:
          json['terms_of_service_on_shopping_cart_page'] as bool?,
      termsOfServiceOnOrderConfirmPage:
          json['terms_of_service_on_order_confirm_page'] as bool?,
      termsOfServicePopup: json['terms_of_service_popup'] as bool?,
      discountBox: json['discount_box'] == null
          ? null
          : DiscountBoxResponse.fromJson(
              json['discount_box'] as Map<String, dynamic>),
      giftCardBox: json['gift_card_box'] == null
          ? null
          : GiftCardBoxResponse.fromJson(
              json['gift_card_box'] as Map<String, dynamic>),
      orderReviewData: json['order_review_data'] == null
          ? null
          : OrderReviewDataResponse.fromJson(
              json['order_review_data'] as Map<String, dynamic>),
      buttonPaymentMethodViewComponentNames:
          (json['button_payment_method_view_component_names'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      hideCheckoutButton: json['hide_checkout_button'] as bool?,
      showVendorName: json['show_vendor_name'] as bool?,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShoppingCartResponseToJson(
        ShoppingCartResponse instance) =>
    <String, dynamic>{
      'one_page_checkout_enabled': instance.onePageCheckoutEnabled,
      'show_sku': instance.showSku,
      'show_product_images': instance.showProductImages,
      'is_editable': instance.isEditable,
      'items': instance.items,
      'checkout_attributes': instance.checkoutAttributes,
      'warnings': instance.warnings,
      'min_order_subtotal_warning': instance.minOrderSubtotalWarning,
      'display_tax_shipping_info': instance.displayTaxShippingInfo,
      'terms_of_service_on_shopping_cart_page':
          instance.termsOfServiceOnShoppingCartPage,
      'terms_of_service_on_order_confirm_page':
          instance.termsOfServiceOnOrderConfirmPage,
      'terms_of_service_popup': instance.termsOfServicePopup,
      'discount_box': instance.discountBox,
      'gift_card_box': instance.giftCardBox,
      'order_review_data': instance.orderReviewData,
      'button_payment_method_view_component_names':
          instance.buttonPaymentMethodViewComponentNames,
      'hide_checkout_button': instance.hideCheckoutButton,
      'show_vendor_name': instance.showVendorName,
      'custom_properties': instance.customProperties,
    };
