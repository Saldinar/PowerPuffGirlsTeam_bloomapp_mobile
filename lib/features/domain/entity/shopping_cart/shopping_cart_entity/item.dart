import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/default_picture_model.dart';
import 'package:amamini_client/features/domain/entity/product_details/allowed_quantity.dart';
import 'package:equatable/equatable.dart';

class ItemEntity extends Equatable {
  final String? sku;
  final String? vendorName;
  final DefaultPictureModelEntity? picture;
  final int? productId;
  final String? productName;
  final String? productSeName;
  final String? unitPrice;
  final int? unitPriceValue;
  final String? subTotal;
  final int? subTotalValue;
  final String? discount;
  final int? discountValue;
  final int? maximumDiscountedQty;
  final int? quantity;
  final List<AllowedQuantityEntity>? allowedQuantities;
  final String? attributeInfo;
  final String? recurringInfo;
  final String? rentalInfo;
  final bool? allowItemEditing;
  final bool? disableRemoval;
  final List<String>? warnings;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const ItemEntity({
    this.sku,
    this.vendorName,
    this.picture,
    this.productId,
    this.productName,
    this.productSeName,
    this.unitPrice,
    this.unitPriceValue,
    this.subTotal,
    this.subTotalValue,
    this.discount,
    this.discountValue,
    this.maximumDiscountedQty,
    this.quantity,
    this.allowedQuantities,
    this.attributeInfo,
    this.recurringInfo,
    this.rentalInfo,
    this.allowItemEditing,
    this.disableRemoval,
    this.warnings,
    this.id,
    this.customProperties,
  });

  ItemEntity copyWith({
    String? sku,
    String? vendorName,
    DefaultPictureModelEntity? picture,
    int? productId,
    String? productName,
    String? productSeName,
    String? unitPrice,
    int? unitPriceValue,
    String? subTotal,
    int? subTotalValue,
    String? discount,
    int? discountValue,
    int? maximumDiscountedQty,
    int? quantity,
    List<AllowedQuantityEntity>? allowedQuantities,
    String? attributeInfo,
    String? recurringInfo,
    String? rentalInfo,
    bool? allowItemEditing,
    bool? disableRemoval,
    List<String>? warnings,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return ItemEntity(
      sku: sku ?? this.sku,
      vendorName: vendorName ?? this.vendorName,
      picture: picture ?? this.picture,
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      productSeName: productSeName ?? this.productSeName,
      unitPrice: unitPrice ?? this.unitPrice,
      unitPriceValue: unitPriceValue ?? this.unitPriceValue,
      subTotal: subTotal ?? this.subTotal,
      subTotalValue: subTotalValue ?? this.subTotalValue,
      discount: discount ?? this.discount,
      discountValue: discountValue ?? this.discountValue,
      maximumDiscountedQty: maximumDiscountedQty ?? this.maximumDiscountedQty,
      quantity: quantity ?? this.quantity,
      allowedQuantities: allowedQuantities ?? this.allowedQuantities,
      attributeInfo: attributeInfo ?? this.attributeInfo,
      recurringInfo: recurringInfo ?? this.recurringInfo,
      rentalInfo: rentalInfo ?? this.rentalInfo,
      allowItemEditing: allowItemEditing ?? this.allowItemEditing,
      disableRemoval: disableRemoval ?? this.disableRemoval,
      warnings: warnings ?? this.warnings,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      sku,
      vendorName,
      picture,
      productId,
      productName,
      productSeName,
      unitPrice,
      unitPriceValue,
      subTotal,
      subTotalValue,
      discount,
      discountValue,
      maximumDiscountedQty,
      quantity,
      allowedQuantities,
      attributeInfo,
      recurringInfo,
      rentalInfo,
      allowItemEditing,
      disableRemoval,
      warnings,
      id,
      customProperties,
    ];
  }
}
