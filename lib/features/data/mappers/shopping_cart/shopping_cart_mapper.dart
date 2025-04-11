import 'package:amamini_client/features/data/mappers/addresses/address_mapper.dart';
import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/default_picture_model/default_picture_model_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/values_mapper/values_mapper.dart';
import 'package:amamini_client/features/data/mappers/product_details/product_details_mapper.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/applied_discounts_with_code.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/checkout_attribute.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/discount_box.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/gift_card_box.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/item.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/order_review_data.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/shopping_cart_response.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/applied_discounts_with_code.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/checkout_attribute.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/discount_box.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/gift_card_box.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/item.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/order_review_data.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/shopping_cart_entity.dart';

extension ShoppingCartMapper on ShoppingCartResponse {
  ShoppingCartEntity toEntity() {
    return ShoppingCartEntity(
      onePageCheckoutEnabled: onePageCheckoutEnabled,
      showSku: showSku,
      showProductImages: showProductImages,
      isEditable: isEditable,
      items: items?.map((item) => item.toEntity()).toList(),
      checkoutAttributes: checkoutAttributes
          ?.map((checkOutAttribute) => checkOutAttribute.toEntity())
          .toList(),
      warnings: warnings,
      minOrderSubtotalWarning: minOrderSubtotalWarning,
      displayTaxShippingInfo: displayTaxShippingInfo,
      termsOfServiceOnShoppingCartPage: termsOfServiceOnShoppingCartPage,
      termsOfServiceOnOrderConfirmPage: termsOfServiceOnOrderConfirmPage,
      termsOfServicePopup: termsOfServicePopup,
      discountBox: discountBox?.toEntity(),
      giftCardBox: giftCardBox?.toEntity(),
      orderReviewData: orderReviewData?.toEntity(),
      buttonPaymentMethodViewComponentNames:
          buttonPaymentMethodViewComponentNames,
      hideCheckoutButton: hideCheckoutButton,
      showVendorName: showVendorName,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension OrderReviewDataMapper on OrderReviewDataResponse {
  OrderReviewDataEntity toEntity() {
    return OrderReviewDataEntity(
      display: display,
      billingAddress: billingAddress?.toEntity(),
      isShippable: isShippable,
      shippingAddress: shippingAddress?.toEntity(),
      selectedPickupInStore: selectedPickupInStore,
      pickupAddress: pickupAddress?.toEntity(),
      shippingMethod: shippingMethod,
      paymentMethod: paymentMethod,
      customValues: customValues?.toEntity(),
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension ItemMapper on ItemResponse {
  ItemEntity toEntity() {
    return ItemEntity(
      sku: sku,
      vendorName: vendorName,
      picture: picture?.toEntity(),
      productId: productId,
      productName: productName,
      productSeName: productSeName,
      unitPrice: unitPrice,
      unitPriceValue: unitPriceValue,
      subTotal: subTotal,
      subTotalValue: subTotalValue,
      discount: discount,
      discountValue: discountValue,
      maximumDiscountedQty: maximumDiscountedQty,
      quantity: quantity,
      allowedQuantities:
          allowedQuantities?.map((allowed) => allowed.toEntity()).toList(),
      attributeInfo: attributeInfo,
      recurringInfo: recurringInfo,
      rentalInfo: rentalInfo,
      allowItemEditing: allowItemEditing,
      disableRemoval: disableRemoval,
      warnings: warnings,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension CheckOutAttributeMapper on CheckoutAttributeResponse {
  CheckoutAttributeEntity toEntity() {
    return CheckoutAttributeEntity(
      name: name,
      defaultValue: defaultValue,
      textPrompt: textPrompt,
      isRequired: isRequired,
      selectedDay: selectedDay,
      selectedMonth: selectedMonth,
      selectedYear: selectedYear,
      allowedFileExtensions: allowedFileExtensions,
      attributeControlType: attributeControlType,
      values: values?.map((value) => value.toEntity()).toList(),
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension DiscountBoxMapper on DiscountBoxResponse {
  DiscountBoxEntity toEntity() {
    return DiscountBoxEntity(
      appliedDiscountsWithCodes: appliedDiscountsWithCodes
          ?.map(
            (appliedDiscountsWithCode) => appliedDiscountsWithCode.toEntity(),
          )
          .toList(),
      display: display,
      messages: messages,
      isApplied: isApplied,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension AppliedDiscountsWithCode on AppliedDiscountsWithCodeResponse {
  AppliedDiscountsWithCodeEntity toEntity() {
    return AppliedDiscountsWithCodeEntity(
      couponCode: couponCode,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension GiftCardBoxMapper on GiftCardBoxResponse {
  GiftCardBoxEntity toEntity() {
    return GiftCardBoxEntity(
      display: display,
      message: message,
      isApplied: isApplied,
      customProperties: customProperties?.toEntity(),
    );
  }
}
