// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductPriceResponse _$ProductPriceResponseFromJson(
        Map<String, dynamic> json) =>
    ProductPriceResponse(
      currencyCode: json['currency_code'] as String?,
      oldPrice: json['old_price'] as String?,
      oldPriceValue: (json['old_price_value'] as num?)?.toInt(),
      price: json['price'] as String?,
      priceWithDiscount: json['price_with_discount'] as String?,
      priceValue: (json['price_value'] as num?)?.toInt(),
      priceWithDiscountValue:
          (json['price_with_discount_value'] as num?)?.toInt(),
      customerEntersPrice: json['customer_enters_price'] as bool?,
      callForPrice: json['call_for_price'] as bool?,
      productId: (json['product_id'] as num?)?.toInt(),
      hidePrices: json['hide_prices'] as bool?,
      isRental: json['is_rental'] as bool?,
      rentalPrice: json['rental_price'] as String?,
      rentalPriceValue: (json['rental_price_value'] as num?)?.toInt(),
      displayTaxShippingInfo: json['display_tax_shipping_info'] as bool?,
      basePricePAngV: json['base_price_p_ang_v'] as String?,
      basePricePAngVValue: (json['base_price_p_ang_v_value'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductPriceResponseToJson(
        ProductPriceResponse instance) =>
    <String, dynamic>{
      'currency_code': instance.currencyCode,
      'old_price': instance.oldPrice,
      'old_price_value': instance.oldPriceValue,
      'price': instance.price,
      'price_with_discount': instance.priceWithDiscount,
      'price_value': instance.priceValue,
      'price_with_discount_value': instance.priceWithDiscountValue,
      'customer_enters_price': instance.customerEntersPrice,
      'call_for_price': instance.callForPrice,
      'product_id': instance.productId,
      'hide_prices': instance.hidePrices,
      'is_rental': instance.isRental,
      'rental_price': instance.rentalPrice,
      'rental_price_value': instance.rentalPriceValue,
      'display_tax_shipping_info': instance.displayTaxShippingInfo,
      'base_price_p_ang_v': instance.basePricePAngV,
      'base_price_p_ang_v_value': instance.basePricePAngVValue,
      'custom_properties': instance.customProperties,
    };
