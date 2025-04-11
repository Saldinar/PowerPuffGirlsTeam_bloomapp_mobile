import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart_response/checkout_attribute.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart_response/discount_box.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart_response/gift_card_box.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart_response/item.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart_response/order_review_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shopping_cart_response.g.dart';

@JsonSerializable()
class ShoppingCartResponse {
  @JsonKey(name: 'one_page_checkout_enabled')
  final bool? onePageCheckoutEnabled;
  @JsonKey(name: 'show_sku')
  final bool? showSku;
  @JsonKey(name: 'show_product_images')
  final bool? showProductImages;
  @JsonKey(name: 'is_editable')
  final bool? isEditable;
  final List<ItemResponse>? items;
  @JsonKey(name: 'checkout_attributes')
  final List<CheckoutAttributeResponse>? checkoutAttributes;
  final List<String>? warnings;
  @JsonKey(name: 'min_order_subtotal_warning')
  final String? minOrderSubtotalWarning;
  @JsonKey(name: 'display_tax_shipping_info')
  final bool? displayTaxShippingInfo;
  @JsonKey(name: 'terms_of_service_on_shopping_cart_page')
  final bool? termsOfServiceOnShoppingCartPage;
  @JsonKey(name: 'terms_of_service_on_order_confirm_page')
  final bool? termsOfServiceOnOrderConfirmPage;
  @JsonKey(name: 'terms_of_service_popup')
  final bool? termsOfServicePopup;
  @JsonKey(name: 'discount_box')
  final DiscountBoxResponse? discountBox;
  @JsonKey(name: 'gift_card_box')
  final GiftCardBoxResponse? giftCardBox;
  @JsonKey(name: 'order_review_data')
  final OrderReviewDataResponse? orderReviewData;
  @JsonKey(name: 'button_payment_method_view_component_names')
  final List<String>? buttonPaymentMethodViewComponentNames;
  @JsonKey(name: 'hide_checkout_button')
  final bool? hideCheckoutButton;
  @JsonKey(name: 'show_vendor_name')
  final bool? showVendorName;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ShoppingCartResponse({
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

  factory ShoppingCartResponse.fromJson(Map<String, dynamic> json) {
    return _$ShoppingCartResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ShoppingCartResponseToJson(this);
}
