// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WishlistItemResponse _$WishlistItemResponseFromJson(
        Map<String, dynamic> json) =>
    WishlistItemResponse(
      sku: json['sku'] as String?,
      picture: json['picture'] == null
          ? null
          : DefaultPictureModelResponse.fromJson(
              json['picture'] as Map<String, dynamic>),
      productId: (json['product_id'] as num?)?.toInt(),
      productName: json['product_name'] as String?,
      productSeName: json['product_se_name'] as String?,
      unitPrice: json['unit_price'] as String?,
      unitPriceValue: (json['unit_price_value'] as num?)?.toInt(),
      subTotal: json['sub_total'] as String?,
      subTotalValue: (json['sub_total_value'] as num?)?.toInt(),
      discount: json['discount'] as String?,
      discountValue: (json['discount_value'] as num?)?.toInt(),
      maximumDiscountedQty: (json['maximum_discounted_qty'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      allowedQuantities: (json['allowed_quantities'] as List<dynamic>?)
          ?.map((e) => AvailableResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributeInfo: json['attribute_info'] as String?,
      recurringInfo: json['recurring_info'] as String?,
      rentalInfo: json['rental_info'] as String?,
      allowItemEditing: json['allow_item_editing'] as bool?,
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WishlistItemResponseToJson(
        WishlistItemResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'picture': instance.picture,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_se_name': instance.productSeName,
      'unit_price': instance.unitPrice,
      'unit_price_value': instance.unitPriceValue,
      'sub_total': instance.subTotal,
      'sub_total_value': instance.subTotalValue,
      'discount': instance.discount,
      'discount_value': instance.discountValue,
      'maximum_discounted_qty': instance.maximumDiscountedQty,
      'quantity': instance.quantity,
      'allowed_quantities': instance.allowedQuantities,
      'attribute_info': instance.attributeInfo,
      'recurring_info': instance.recurringInfo,
      'rental_info': instance.rentalInfo,
      'allow_item_editing': instance.allowItemEditing,
      'warnings': instance.warnings,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
