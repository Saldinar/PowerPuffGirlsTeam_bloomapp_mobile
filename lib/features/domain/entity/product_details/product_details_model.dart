// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/default_picture_model.dart';
import 'package:amamini_client/features/domain/entity/product/product_price.dart';
import 'package:amamini_client/features/domain/entity/product/product_specification_model.dart';
import 'package:amamini_client/features/domain/entity/product_details/add_to_cart.dart';
import 'package:amamini_client/features/domain/entity/product_details/breadcrumb.dart';
import 'package:amamini_client/features/domain/entity/product_details/gift_card.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_attribute.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_estimate_shipping.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_manufacturer.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_review_overview.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_tag.dart';
import 'package:amamini_client/features/domain/entity/product_details/tier_price.dart';
import 'package:amamini_client/features/domain/entity/product_details/vendor_model.dart';
import 'package:equatable/equatable.dart';

class ProductDetailsModelEntity extends Equatable {
  final bool? defaultPictureZoomEnabled;
  final DefaultPictureModelEntity? defaultPictureModel;
  final List<DefaultPictureModelEntity>? pictureModels;
  final String name;
  final String? shortDescription;
  final String? fullDescription;
  final String? metaKeywords;
  final String? metaDescription;
  final String? metaTitle;
  final String? seName;
  final bool? visibleIndividually;
  final String? productType;
  final bool? showSku;
  final String? sku;
  final bool? showManufacturerPartNumber;
  final String? manufacturerPartNumber;
  final bool? showGtin;
  final String? gtin;
  final bool? showVendor;
  final VendorModelEntity? vendorModel;
  final bool? hasSampleDownload;
  final GiftCardEntity? giftCard;
  final bool? isShipEnabled;
  final bool? isFreeShipping;
  final bool? freeShippingNotificationEnabled;
  final String? deliveryDate;
  final bool? isRental;
  final DateTime? rentalStartDate;
  final DateTime? rentalEndDate;
  final DateTime? availableEndDate;
  final String? manageInventoryMethod;
  final String? stockAvailability;
  final bool? displayBackInStockSubscription;
  final bool? emailAFriendEnabled;
  final bool? compareProductsEnabled;
  final String? pageShareCode;
  final ProductPriceEntity? productPrice;
  final AddToCartEntity? addToCart;
  final BreadcrumbEntity? breadcrumb;
  final List<ProductTagEntity>? productTags;
  final List<ProductAttributeEntity>? productAttributes;
  final ProductSpecificationModelEntity? productSpecificationModel;
  final List<ProductManufacturerEntity>? productManufacturers;
  final ProductReviewOverviewEntity? productReviewOverview;
  final ProductEstimateShippingEntity? productEstimateShipping;
  final List<TierPriceEntity>? tierPrices;
  final List<dynamic>? associatedProducts;
  final bool? displayDiscontinuedMessage;
  final String? currentStoreName;
  final bool? inStock;
  final bool? allowAddingOnlyExistingAttributeCombinations;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const ProductDetailsModelEntity({
    required this.defaultPictureZoomEnabled,
    required this.defaultPictureModel,
    required this.pictureModels,
    required this.name,
    required this.shortDescription,
    required this.fullDescription,
    required this.metaKeywords,
    required this.metaDescription,
    required this.metaTitle,
    required this.seName,
    required this.visibleIndividually,
    required this.productType,
    required this.showSku,
    required this.sku,
    required this.showManufacturerPartNumber,
    required this.manufacturerPartNumber,
    required this.showGtin,
    required this.gtin,
    required this.showVendor,
    required this.vendorModel,
    required this.hasSampleDownload,
    required this.giftCard,
    required this.isShipEnabled,
    required this.isFreeShipping,
    required this.freeShippingNotificationEnabled,
    required this.deliveryDate,
    required this.isRental,
    required this.rentalStartDate,
    required this.rentalEndDate,
    required this.availableEndDate,
    required this.manageInventoryMethod,
    required this.stockAvailability,
    required this.displayBackInStockSubscription,
    required this.emailAFriendEnabled,
    required this.compareProductsEnabled,
    required this.pageShareCode,
    required this.productPrice,
    required this.addToCart,
    required this.breadcrumb,
    required this.productTags,
    required this.productAttributes,
    required this.productSpecificationModel,
    required this.productManufacturers,
    required this.productReviewOverview,
    required this.productEstimateShipping,
    required this.tierPrices,
    required this.associatedProducts,
    required this.displayDiscontinuedMessage,
    required this.currentStoreName,
    required this.inStock,
    required this.allowAddingOnlyExistingAttributeCombinations,
    required this.id,
    required this.customProperties,
  });

  ProductDetailsModelEntity copyWith({
    bool? defaultPictureZoomEnabled,
    DefaultPictureModelEntity? defaultPictureModel,
    List<DefaultPictureModelEntity>? pictureModels,
    String? name,
    String? shortDescription,
    String? fullDescription,
    String? metaKeywords,
    String? metaDescription,
    String? metaTitle,
    String? seName,
    bool? visibleIndividually,
    String? productType,
    bool? showSku,
    String? sku,
    bool? showManufacturerPartNumber,
    String? manufacturerPartNumber,
    bool? showGtin,
    String? gtin,
    bool? showVendor,
    VendorModelEntity? vendorModel,
    bool? hasSampleDownload,
    GiftCardEntity? giftCard,
    bool? isShipEnabled,
    bool? isFreeShipping,
    bool? freeShippingNotificationEnabled,
    String? deliveryDate,
    bool? isRental,
    DateTime? rentalStartDate,
    DateTime? rentalEndDate,
    DateTime? availableEndDate,
    String? manageInventoryMethod,
    String? stockAvailability,
    bool? displayBackInStockSubscription,
    bool? emailAFriendEnabled,
    bool? compareProductsEnabled,
    String? pageShareCode,
    ProductPriceEntity? productPrice,
    AddToCartEntity? addToCart,
    BreadcrumbEntity? breadcrumb,
    List<ProductTagEntity>? productTags,
    List<ProductAttributeEntity>? productAttributes,
    ProductSpecificationModelEntity? productSpecificationModel,
    List<ProductManufacturerEntity>? productManufacturers,
    ProductReviewOverviewEntity? productReviewOverview,
    ProductEstimateShippingEntity? productEstimateShipping,
    List<TierPriceEntity>? tierPrices,
    List<String>? associatedProducts,
    bool? displayDiscontinuedMessage,
    String? currentStoreName,
    bool? inStock,
    bool? allowAddingOnlyExistingAttributeCombinations,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return ProductDetailsModelEntity(
      defaultPictureZoomEnabled:
          defaultPictureZoomEnabled ?? this.defaultPictureZoomEnabled,
      defaultPictureModel: defaultPictureModel ?? this.defaultPictureModel,
      pictureModels: pictureModels ?? this.pictureModels,
      name: name ?? this.name,
      shortDescription: shortDescription ?? this.shortDescription,
      fullDescription: fullDescription ?? this.fullDescription,
      metaKeywords: metaKeywords ?? this.metaKeywords,
      metaDescription: metaDescription ?? this.metaDescription,
      metaTitle: metaTitle ?? this.metaTitle,
      seName: seName ?? this.seName,
      visibleIndividually: visibleIndividually ?? this.visibleIndividually,
      productType: productType ?? this.productType,
      showSku: showSku ?? this.showSku,
      sku: sku ?? this.sku,
      showManufacturerPartNumber:
          showManufacturerPartNumber ?? this.showManufacturerPartNumber,
      manufacturerPartNumber:
          manufacturerPartNumber ?? this.manufacturerPartNumber,
      showGtin: showGtin ?? this.showGtin,
      gtin: gtin ?? this.gtin,
      showVendor: showVendor ?? this.showVendor,
      vendorModel: vendorModel ?? this.vendorModel,
      hasSampleDownload: hasSampleDownload ?? this.hasSampleDownload,
      giftCard: giftCard ?? this.giftCard,
      isShipEnabled: isShipEnabled ?? this.isShipEnabled,
      isFreeShipping: isFreeShipping ?? this.isFreeShipping,
      freeShippingNotificationEnabled: freeShippingNotificationEnabled ??
          this.freeShippingNotificationEnabled,
      deliveryDate: deliveryDate ?? this.deliveryDate,
      isRental: isRental ?? this.isRental,
      rentalStartDate: rentalStartDate ?? this.rentalStartDate,
      rentalEndDate: rentalEndDate ?? this.rentalEndDate,
      availableEndDate: availableEndDate ?? this.availableEndDate,
      manageInventoryMethod:
          manageInventoryMethod ?? this.manageInventoryMethod,
      stockAvailability: stockAvailability ?? this.stockAvailability,
      displayBackInStockSubscription:
          displayBackInStockSubscription ?? this.displayBackInStockSubscription,
      emailAFriendEnabled: emailAFriendEnabled ?? this.emailAFriendEnabled,
      compareProductsEnabled:
          compareProductsEnabled ?? this.compareProductsEnabled,
      pageShareCode: pageShareCode ?? this.pageShareCode,
      productPrice: productPrice ?? this.productPrice,
      addToCart: addToCart ?? this.addToCart,
      breadcrumb: breadcrumb ?? this.breadcrumb,
      productTags: productTags ?? this.productTags,
      productAttributes: productAttributes ?? this.productAttributes,
      productSpecificationModel:
          productSpecificationModel ?? this.productSpecificationModel,
      productManufacturers: productManufacturers ?? this.productManufacturers,
      productReviewOverview:
          productReviewOverview ?? this.productReviewOverview,
      productEstimateShipping:
          productEstimateShipping ?? this.productEstimateShipping,
      tierPrices: tierPrices ?? this.tierPrices,
      associatedProducts: associatedProducts ?? this.associatedProducts,
      displayDiscontinuedMessage:
          displayDiscontinuedMessage ?? this.displayDiscontinuedMessage,
      currentStoreName: currentStoreName ?? this.currentStoreName,
      inStock: inStock ?? this.inStock,
      allowAddingOnlyExistingAttributeCombinations:
          allowAddingOnlyExistingAttributeCombinations ??
              this.allowAddingOnlyExistingAttributeCombinations,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      defaultPictureZoomEnabled,
      defaultPictureModel,
      pictureModels,
      name,
      shortDescription,
      fullDescription,
      metaKeywords,
      metaDescription,
      metaTitle,
      seName,
      visibleIndividually,
      productType,
      showSku,
      sku,
      showManufacturerPartNumber,
      manufacturerPartNumber,
      showGtin,
      gtin,
      showVendor,
      vendorModel,
      hasSampleDownload,
      giftCard,
      isShipEnabled,
      isFreeShipping,
      freeShippingNotificationEnabled,
      deliveryDate,
      isRental,
      rentalStartDate,
      rentalEndDate,
      availableEndDate,
      manageInventoryMethod,
      stockAvailability,
      displayBackInStockSubscription,
      emailAFriendEnabled,
      compareProductsEnabled,
      pageShareCode,
      productPrice,
      addToCart,
      breadcrumb,
      productTags,
      productAttributes,
      productSpecificationModel,
      productManufacturers,
      productReviewOverview,
      productEstimateShipping,
      tierPrices,
      associatedProducts,
      displayDiscontinuedMessage,
      currentStoreName,
      inStock,
      allowAddingOnlyExistingAttributeCombinations,
      id,
      customProperties,
    ];
  }
}
