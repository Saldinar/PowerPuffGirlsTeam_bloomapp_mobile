// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product_details/allowed_quantity.dart';
import 'package:equatable/equatable.dart';

class AddToCartEntity extends Equatable {
  final int? productId;
  final int? enteredQuantity;
  final String? minimumQuantityNotification;
  final List<AllowedQuantityEntity>? allowedQuantities;
  final bool? customerEntersPrice;
  final int? customerEnteredPrice;
  final String? customerEnteredPriceRange;
  final bool? disableBuyButton;
  final bool? disableWishlistButton;
  final bool? isRental;
  final bool? availableForPreOrder;
  final DateTime? preOrderAvailabilityStartDateTimeUtc;
  final String? preOrderAvailabilityStartDateTimeUserTime;
  final int? updatedShoppingCartItemId;
  final String? updateShoppingCartItemType;
  final CustomPropertiesEntity? customProperties;

  const AddToCartEntity({
    required this.productId,
    required this.enteredQuantity,
    required this.minimumQuantityNotification,
    required this.allowedQuantities,
    required this.customerEntersPrice,
    required this.customerEnteredPrice,
    required this.customerEnteredPriceRange,
    required this.disableBuyButton,
    required this.disableWishlistButton,
    required this.isRental,
    required this.availableForPreOrder,
    required this.preOrderAvailabilityStartDateTimeUtc,
    required this.preOrderAvailabilityStartDateTimeUserTime,
    required this.updatedShoppingCartItemId,
    required this.updateShoppingCartItemType,
    required this.customProperties,
  });

  AddToCartEntity copyWith({
    int? productId,
    int? enteredQuantity,
    String? minimumQuantityNotification,
    List<AllowedQuantityEntity>? allowedQuantities,
    bool? customerEntersPrice,
    int? customerEnteredPrice,
    String? customerEnteredPriceRange,
    bool? disableBuyButton,
    bool? disableWishlistButton,
    bool? isRental,
    bool? availableForPreOrder,
    DateTime? preOrderAvailabilityStartDateTimeUtc,
    String? preOrderAvailabilityStartDateTimeUserTime,
    int? updatedShoppingCartItemId,
    String? updateShoppingCartItemType,
    CustomPropertiesEntity? customProperties,
  }) {
    return AddToCartEntity(
      productId: productId ?? this.productId,
      enteredQuantity: enteredQuantity ?? this.enteredQuantity,
      minimumQuantityNotification:
          minimumQuantityNotification ?? this.minimumQuantityNotification,
      allowedQuantities: allowedQuantities ?? this.allowedQuantities,
      customerEntersPrice: customerEntersPrice ?? this.customerEntersPrice,
      customerEnteredPrice: customerEnteredPrice ?? this.customerEnteredPrice,
      customerEnteredPriceRange:
          customerEnteredPriceRange ?? this.customerEnteredPriceRange,
      disableBuyButton: disableBuyButton ?? this.disableBuyButton,
      disableWishlistButton:
          disableWishlistButton ?? this.disableWishlistButton,
      isRental: isRental ?? this.isRental,
      availableForPreOrder: availableForPreOrder ?? this.availableForPreOrder,
      preOrderAvailabilityStartDateTimeUtc:
          preOrderAvailabilityStartDateTimeUtc ??
              this.preOrderAvailabilityStartDateTimeUtc,
      preOrderAvailabilityStartDateTimeUserTime:
          preOrderAvailabilityStartDateTimeUserTime ??
              this.preOrderAvailabilityStartDateTimeUserTime,
      updatedShoppingCartItemId:
          updatedShoppingCartItemId ?? this.updatedShoppingCartItemId,
      updateShoppingCartItemType:
          updateShoppingCartItemType ?? this.updateShoppingCartItemType,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      productId,
      enteredQuantity,
      minimumQuantityNotification,
      allowedQuantities,
      customerEntersPrice,
      customerEnteredPrice,
      customerEnteredPriceRange,
      disableBuyButton,
      disableWishlistButton,
      isRental,
      availableForPreOrder,
      preOrderAvailabilityStartDateTimeUtc,
      preOrderAvailabilityStartDateTimeUserTime,
      updatedShoppingCartItemId,
      updateShoppingCartItemType,
      customProperties,
    ];
  }
}
