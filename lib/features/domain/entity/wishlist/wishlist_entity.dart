import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/wishlist/item.dart';
import 'package:equatable/equatable.dart';

class WishlistEntity extends Equatable {
  final String? customerGuid;
  final String? customerFullname;
  final bool? emailWishlistEnabled;
  final bool? showSku;
  final bool? showProductImages;
  final bool? isEditable;
  final bool? displayAddToCart;
  final bool? displayTaxShippingInfo;
  final List<WishlistItemEntity>? items;
  final List<String>? warnings;
  final CustomPropertiesEntity? customProperties;

  const WishlistEntity({
    this.customerGuid,
    this.customerFullname,
    this.emailWishlistEnabled,
    this.showSku,
    this.showProductImages,
    this.isEditable,
    this.displayAddToCart,
    this.displayTaxShippingInfo,
    this.items,
    this.warnings,
    this.customProperties,
  });

  WishlistEntity copyWith({
    String? customerGuid,
    String? customerFullname,
    bool? emailWishlistEnabled,
    bool? showSku,
    bool? showProductImages,
    bool? isEditable,
    bool? displayAddToCart,
    bool? displayTaxShippingInfo,
    List<WishlistItemEntity>? items,
    List<String>? warnings,
    CustomPropertiesEntity? customProperties,
  }) {
    return WishlistEntity(
      customerGuid: customerGuid ?? this.customerGuid,
      customerFullname: customerFullname ?? this.customerFullname,
      emailWishlistEnabled: emailWishlistEnabled ?? this.emailWishlistEnabled,
      showSku: showSku ?? this.showSku,
      showProductImages: showProductImages ?? this.showProductImages,
      isEditable: isEditable ?? this.isEditable,
      displayAddToCart: displayAddToCart ?? this.displayAddToCart,
      displayTaxShippingInfo:
          displayTaxShippingInfo ?? this.displayTaxShippingInfo,
      items: items ?? this.items,
      warnings: warnings ?? this.warnings,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props => [
        customerGuid,
        customerFullname,
        emailWishlistEnabled,
        showSku,
        showProductImages,
        isEditable,
        displayAddToCart,
        displayTaxShippingInfo,
        items,
        warnings,
        customProperties,
      ];
}
