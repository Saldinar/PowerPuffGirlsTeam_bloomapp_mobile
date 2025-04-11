import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/responses/product/product_price.dart';
import 'package:amamini_client/features/domain/entity/product/product_price.dart';

extension ProductPriceMapper on ProductPriceResponse {
  ProductPriceEntity toEntity() {
    return ProductPriceEntity(
      oldPrice: oldPrice,
      oldPriceValue: oldPriceValue,
      price: price ?? '0',
      priceValue: priceValue,
      basePricePAngV: basePricePAngV,
      basePricePAngVValue: basePricePAngVValue,
      disableBuyButton: disableBuyButton,
      disableWishlistButton: disableWishlistButton,
      disableAddToCompareListButton: disableAddToCompareListButton,
      availableForPreOrder: availableForPreOrder,
      preOrderAvailabilityStartDateTimeUtc:
          preOrderAvailabilityStartDateTimeUtc,
      isRental: isRental,
      forceRedirectionAfterAddingToCart: forceRedirectionAfterAddingToCart,
      displayTaxShippingInfo: displayTaxShippingInfo,
      customProperties: customProperties?.toEntity(),
    );
  }
}
