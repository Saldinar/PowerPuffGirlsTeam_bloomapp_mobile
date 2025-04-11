// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class ProductPriceEntity extends Equatable {
  final String? currencyCode;
  final String? oldPrice;
  final int? oldPriceValue;
  final String? price;
  final String? priceWithDiscount;
  final int? priceValue;
  final int? priceWithDiscountValue;
  final bool? customerEntersPrice;
  final bool? callForPrice;
  final int? productId;
  final bool? hidePrices;
  final bool? isRental;
  final String? rentalPrice;
  final int? rentalPriceValue;
  final bool? displayTaxShippingInfo;
  final String? basePricePAngV;
  final int? basePricePAngVValue;
  final CustomPropertiesEntity? customProperties;

  const ProductPriceEntity({
    required this.currencyCode,
    required this.oldPrice,
    required this.oldPriceValue,
    required this.price,
    required this.priceWithDiscount,
    required this.priceValue,
    required this.priceWithDiscountValue,
    required this.customerEntersPrice,
    required this.callForPrice,
    required this.productId,
    required this.hidePrices,
    required this.isRental,
    required this.rentalPrice,
    required this.rentalPriceValue,
    required this.displayTaxShippingInfo,
    required this.basePricePAngV,
    required this.basePricePAngVValue,
    required this.customProperties,
  });

  ProductPriceEntity copyWith({
    String? currencyCode,
    String? oldPrice,
    int? oldPriceValue,
    String? price,
    String? priceWithDiscount,
    int? priceValue,
    int? priceWithDiscountValue,
    bool? customerEntersPrice,
    bool? callForPrice,
    int? productId,
    bool? hidePrices,
    bool? isRental,
    String? rentalPrice,
    int? rentalPriceValue,
    bool? displayTaxShippingInfo,
    String? basePricePAngV,
    int? basePricePAngVValue,
    CustomPropertiesEntity? customProperties,
  }) {
    return ProductPriceEntity(
      currencyCode: currencyCode ?? this.currencyCode,
      oldPrice: oldPrice ?? this.oldPrice,
      oldPriceValue: oldPriceValue ?? this.oldPriceValue,
      price: price ?? this.price,
      priceWithDiscount: priceWithDiscount ?? this.priceWithDiscount,
      priceValue: priceValue ?? this.priceValue,
      priceWithDiscountValue:
          priceWithDiscountValue ?? this.priceWithDiscountValue,
      customerEntersPrice: customerEntersPrice ?? this.customerEntersPrice,
      callForPrice: callForPrice ?? this.callForPrice,
      productId: productId ?? this.productId,
      hidePrices: hidePrices ?? this.hidePrices,
      isRental: isRental ?? this.isRental,
      rentalPrice: rentalPrice ?? this.rentalPrice,
      rentalPriceValue: rentalPriceValue ?? this.rentalPriceValue,
      displayTaxShippingInfo:
          displayTaxShippingInfo ?? this.displayTaxShippingInfo,
      basePricePAngV: basePricePAngV ?? this.basePricePAngV,
      basePricePAngVValue: basePricePAngVValue ?? this.basePricePAngVValue,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      currencyCode,
      oldPrice,
      oldPriceValue,
      price,
      priceWithDiscount,
      priceValue,
      priceWithDiscountValue,
      customerEntersPrice,
      callForPrice,
      productId,
      hidePrices,
      isRental,
      rentalPrice,
      rentalPriceValue,
      displayTaxShippingInfo,
      basePricePAngV,
      basePricePAngVValue,
      customProperties,
    ];
  }
}
