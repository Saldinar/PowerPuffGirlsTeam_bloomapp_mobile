import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/checkout_attribute.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/discount_box.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/gift_card_box.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/item.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/order_review_data.dart';
import 'package:equatable/equatable.dart';

class ShoppingCartEntity extends Equatable {
  final bool? onePageCheckoutEnabled;
  final bool? showSku;
  final bool? showProductImages;
  final bool? isEditable;
  final List<ItemEntity>? items;
  final List<CheckoutAttributeEntity>? checkoutAttributes;
  final List<String>? warnings;
  final String? minOrderSubtotalWarning;
  final bool? displayTaxShippingInfo;
  final bool? termsOfServiceOnShoppingCartPage;
  final bool? termsOfServiceOnOrderConfirmPage;
  final bool? termsOfServicePopup;
  final DiscountBoxEntity? discountBox;
  final GiftCardBoxEntity? giftCardBox;
  final OrderReviewDataEntity? orderReviewData;
  final List<String>? buttonPaymentMethodViewComponentNames;
  final bool? hideCheckoutButton;
  final bool? showVendorName;
  final CustomPropertiesEntity? customProperties;

  const ShoppingCartEntity({
    this.onePageCheckoutEnabled,
    this.showSku,
    this.showProductImages,
    this.isEditable,
    this.items,
    this.checkoutAttributes,
    this.warnings,
    this.minOrderSubtotalWarning,
    this.displayTaxShippingInfo,
    this.termsOfServiceOnShoppingCartPage,
    this.termsOfServiceOnOrderConfirmPage,
    this.termsOfServicePopup,
    this.discountBox,
    this.giftCardBox,
    this.orderReviewData,
    this.buttonPaymentMethodViewComponentNames,
    this.hideCheckoutButton,
    this.showVendorName,
    this.customProperties,
  });

  ShoppingCartEntity copyWith({
    bool? onePageCheckoutEnabled,
    bool? showSku,
    bool? showProductImages,
    bool? isEditable,
    List<ItemEntity>? items,
    List<CheckoutAttributeEntity>? checkoutAttributes,
    List<String>? warnings,
    String? minOrderSubtotalWarning,
    bool? displayTaxShippingInfo,
    bool? termsOfServiceOnShoppingCartPage,
    bool? termsOfServiceOnOrderConfirmPage,
    bool? termsOfServicePopup,
    DiscountBoxEntity? discountBox,
    GiftCardBoxEntity? giftCardBox,
    OrderReviewDataEntity? orderReviewData,
    List<String>? buttonPaymentMethodViewComponentNames,
    bool? hideCheckoutButton,
    bool? showVendorName,
    CustomPropertiesEntity? customProperties,
  }) {
    return ShoppingCartEntity(
      onePageCheckoutEnabled:
          onePageCheckoutEnabled ?? this.onePageCheckoutEnabled,
      showSku: showSku ?? this.showSku,
      showProductImages: showProductImages ?? this.showProductImages,
      isEditable: isEditable ?? this.isEditable,
      items: items ?? this.items,
      checkoutAttributes: checkoutAttributes ?? this.checkoutAttributes,
      warnings: warnings ?? this.warnings,
      minOrderSubtotalWarning:
          minOrderSubtotalWarning ?? this.minOrderSubtotalWarning,
      displayTaxShippingInfo:
          displayTaxShippingInfo ?? this.displayTaxShippingInfo,
      termsOfServiceOnShoppingCartPage: termsOfServiceOnShoppingCartPage ??
          this.termsOfServiceOnShoppingCartPage,
      termsOfServiceOnOrderConfirmPage: termsOfServiceOnOrderConfirmPage ??
          this.termsOfServiceOnOrderConfirmPage,
      termsOfServicePopup: termsOfServicePopup ?? this.termsOfServicePopup,
      discountBox: discountBox ?? this.discountBox,
      giftCardBox: giftCardBox ?? this.giftCardBox,
      orderReviewData: orderReviewData ?? this.orderReviewData,
      buttonPaymentMethodViewComponentNames:
          buttonPaymentMethodViewComponentNames ??
              this.buttonPaymentMethodViewComponentNames,
      hideCheckoutButton: hideCheckoutButton ?? this.hideCheckoutButton,
      showVendorName: showVendorName ?? this.showVendorName,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      onePageCheckoutEnabled,
      showSku,
      showProductImages,
      isEditable,
      items,
      checkoutAttributes,
      warnings,
      minOrderSubtotalWarning,
      displayTaxShippingInfo,
      termsOfServiceOnShoppingCartPage,
      termsOfServiceOnOrderConfirmPage,
      termsOfServicePopup,
      discountBox,
      giftCardBox,
      orderReviewData,
      buttonPaymentMethodViewComponentNames,
      hideCheckoutButton,
      showVendorName,
      customProperties,
    ];
  }
}
