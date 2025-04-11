// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_price.g.dart';

@JsonSerializable()
class ProductPriceResponse {
  @JsonKey(name: 'currency_code')
  final String? currencyCode;
  @JsonKey(name: 'old_price')
  final String? oldPrice;
  @JsonKey(name: 'old_price_value')
  final int? oldPriceValue;
  final String? price;
  @JsonKey(name: 'price_with_discount')
  final String? priceWithDiscount;
  @JsonKey(name: 'price_value')
  final int? priceValue;
  @JsonKey(name: 'price_with_discount_value')
  final int? priceWithDiscountValue;
  @JsonKey(name: 'customer_enters_price')
  final bool? customerEntersPrice;
  @JsonKey(name: 'call_for_price')
  final bool? callForPrice;
  @JsonKey(name: 'product_id')
  final int? productId;
  @JsonKey(name: 'hide_prices')
  final bool? hidePrices;
  @JsonKey(name: 'is_rental')
  final bool? isRental;
  @JsonKey(name: 'rental_price')
  final String? rentalPrice;
  @JsonKey(name: 'rental_price_value')
  final int? rentalPriceValue;
  @JsonKey(name: 'display_tax_shipping_info')
  final bool? displayTaxShippingInfo;
  @JsonKey(name: 'base_price_p_ang_v')
  final String? basePricePAngV;
  @JsonKey(name: 'base_price_p_ang_v_value')
  final int? basePricePAngVValue;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ProductPriceResponse({
    this.currencyCode,
    this.oldPrice,
    this.oldPriceValue,
    this.price,
    this.priceWithDiscount,
    this.priceValue,
    this.priceWithDiscountValue,
    this.customerEntersPrice,
    this.callForPrice,
    this.productId,
    this.hidePrices,
    this.isRental,
    this.rentalPrice,
    this.rentalPriceValue,
    this.displayTaxShippingInfo,
    this.basePricePAngV,
    this.basePricePAngVValue,
    this.customProperties,
  });

  factory ProductPriceResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductPriceResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductPriceResponseToJson(this);
}
