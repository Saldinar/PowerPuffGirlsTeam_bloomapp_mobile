import 'package:amamini_client/features/data/mappers/available_dto_mapper/available_dto_mapper.dart';
import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/default_picture_model/default_picture_model_mapper.dart';
import 'package:amamini_client/features/data/model/responses/wishlist/item.dart';
import 'package:amamini_client/features/data/model/responses/wishlist/wishlist_response.dart';
import 'package:amamini_client/features/domain/entity/wishlist/item.dart';
import 'package:amamini_client/features/domain/entity/wishlist/wishlist_entity.dart';

extension WishlistMapper on WishlistResponse {
  WishlistEntity toEntity() {
    return WishlistEntity(
      customerGuid: customerGuid,
      customerFullname: customerFullname,
      emailWishlistEnabled: emailWishlistEnabled,
      showSku: showSku,
      showProductImages: showProductImages,
      isEditable: isEditable,
      displayAddToCart: displayAddToCart,
      displayTaxShippingInfo: displayTaxShippingInfo,
      items: items?.map((item) => item.toEntity()).toList(),
      warnings: warnings,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension WishlistItemMapper on WishlistItemResponse {
  WishlistItemEntity toEntity() {
    return WishlistItemEntity(
      sku: sku,
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
          allowedQuantities?.map((item) => item.toEntity()).toList(),
      attributeInfo: attributeInfo,
      recurringInfo: recurringInfo,
      rentalInfo: rentalInfo,
      allowItemEditing: allowItemEditing,
      warnings: warnings,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}
