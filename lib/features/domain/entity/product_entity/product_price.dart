import 'package:amamini_client/features/domain/entity/product_entity/custom_properties.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_price.freezed.dart';

@freezed
class ProductPriceEntity with _$ProductPriceEntity {
  factory ProductPriceEntity({
    required String? oldPrice,
    required int? oldPriceValue,
    required String price,
    required int? priceValue,
    required String? basePricePAngV,
    required int? basePricePAngVValue,
    required bool? disableBuyButton,
    required bool? disableWishlistButton,
    required bool? disableAddToCompareListButton,
    required bool? availableForPreOrder,
    required DateTime? preOrderAvailabilityStartDateTimeUtc,
    required bool? isRental,
    required bool? forceRedirectionAfterAddingToCart,
    required bool? displayTaxShippingInfo,
    required CustomPropertiesEntity? customProperties,
  }) = _ProductPriceEntity;
}
