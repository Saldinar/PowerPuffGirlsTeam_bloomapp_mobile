// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/picture_model/default_picture_model.dart';
import 'package:amamini_client/features/data/model/responses/product/product_price.dart';
import 'package:amamini_client/features/data/model/responses/product/product_specification_model.dart';
import 'package:amamini_client/features/data/model/responses/product_details/add_to_cart.dart';
import 'package:amamini_client/features/data/model/responses/product_details/breadcrumb.dart';
import 'package:amamini_client/features/data/model/responses/product_details/gift_card.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_attribute.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_estimate_shipping.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_manufacturer.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_review_overview.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_tag.dart';
import 'package:amamini_client/features/data/model/responses/product_details/tier_price.dart';
import 'package:amamini_client/features/data/model/responses/product_details/vendor_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_details_model.g.dart';

@JsonSerializable()
class ProductDetailsModelResponse {
  @JsonKey(name: 'default_picture_zoom_enabled')
  final bool? defaultPictureZoomEnabled;
  @JsonKey(name: 'default_picture_model')
  final DefaultPictureModelResponse? defaultPictureModel;
  @JsonKey(name: 'picture_models')
  final List<DefaultPictureModelResponse>? pictureModels;
  final String name;
  @JsonKey(name: 'short_description')
  final String? shortDescription;
  @JsonKey(name: 'full_description')
  final String? fullDescription;
  @JsonKey(name: 'meta_keywords')
  final String? metaKeywords;
  @JsonKey(name: 'meta_description')
  final String? metaDescription;
  @JsonKey(name: 'meta_title')
  final String? metaTitle;
  @JsonKey(name: 'se_name')
  final String? seName;
  @JsonKey(name: 'visible_individually')
  final bool? visibleIndividually;
  @JsonKey(name: 'product_type')
  final String? productType;
  @JsonKey(name: 'show_sku')
  final bool? showSku;
  final String? sku;
  @JsonKey(name: 'show_manufacturer_part_number')
  final bool? showManufacturerPartNumber;
  @JsonKey(name: 'manufacturer_part_number')
  final String? manufacturerPartNumber;
  @JsonKey(name: 'show_gtin')
  final bool? showGtin;
  final String? gtin;
  @JsonKey(name: 'show_vendor')
  final bool? showVendor;
  @JsonKey(name: 'vendor_model')
  final VendorModelResponse? vendorModel;
  @JsonKey(name: 'has_sample_download')
  final bool? hasSampleDownload;
  @JsonKey(name: 'gift_card')
  final GiftCardResponse? giftCard;
  @JsonKey(name: 'is_ship_enabled')
  final bool? isShipEnabled;
  @JsonKey(name: 'is_free_shipping')
  final bool? isFreeShipping;
  @JsonKey(name: 'free_shipping_notification_enabled')
  final bool? freeShippingNotificationEnabled;
  @JsonKey(name: 'delivery_date')
  final String? deliveryDate;
  @JsonKey(name: 'is_rental')
  final bool? isRental;
  @JsonKey(name: 'rental_start_date')
  final DateTime? rentalStartDate;
  @JsonKey(name: 'rental_end_date')
  final DateTime? rentalEndDate;
  @JsonKey(name: 'available_end_date')
  final DateTime? availableEndDate;
  @JsonKey(name: 'manage_inventory_method')
  final String? manageInventoryMethod;
  @JsonKey(name: 'stock_availability')
  final String? stockAvailability;
  @JsonKey(name: 'display_back_in_stock_subscription')
  final bool? displayBackInStockSubscription;
  @JsonKey(name: 'email_a_friend_enabled')
  final bool? emailAFriendEnabled;
  @JsonKey(name: 'compare_products_enabled')
  final bool? compareProductsEnabled;
  @JsonKey(name: 'page_share_code')
  final String? pageShareCode;
  @JsonKey(name: 'product_price')
  final ProductPriceResponse? productPrice;
  @JsonKey(name: 'add_to_cart')
  final AddToCartResponse? addToCart;
  final BreadcrumbResponse? breadcrumb;
  @JsonKey(name: 'product_tags')
  final List<ProductTagResponse>? productTags;
  @JsonKey(name: 'product_attributes')
  final List<ProductAttributeResponse>? productAttributes;
  @JsonKey(name: 'product_specification_model')
  final ProductSpecificationModelResponse? productSpecificationModel;
  @JsonKey(name: 'product_manufacturers')
  final List<ProductManufacturerResponse>? productManufacturers;
  @JsonKey(name: 'product_review_overview')
  final ProductReviewOverviewResponse? productReviewOverview;
  @JsonKey(name: 'product_estimate_shipping')
  final ProductEstimateShippingResponse? productEstimateShipping;
  @JsonKey(name: 'tier_prices')
  final List<TierPriceResponse>? tierPrices;
  @JsonKey(name: 'associated_products')
  final List<dynamic>? associatedProducts;
  @JsonKey(name: 'display_discontinued_message')
  final bool? displayDiscontinuedMessage;
  @JsonKey(name: 'current_store_name')
  final String? currentStoreName;
  @JsonKey(name: 'in_stock')
  final bool? inStock;
  @JsonKey(name: 'allow_adding_only_existing_attribute_combinations')
  final bool? allowAddingOnlyExistingAttributeCombinations;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ProductDetailsModelResponse({
    required this.name,
    this.defaultPictureZoomEnabled,
    this.defaultPictureModel,
    this.pictureModels,
    this.shortDescription,
    this.fullDescription,
    this.metaKeywords,
    this.metaDescription,
    this.metaTitle,
    this.seName,
    this.visibleIndividually,
    this.productType,
    this.showSku,
    this.sku,
    this.showManufacturerPartNumber,
    this.manufacturerPartNumber,
    this.showGtin,
    this.gtin,
    this.showVendor,
    this.vendorModel,
    this.hasSampleDownload,
    this.giftCard,
    this.isShipEnabled,
    this.isFreeShipping,
    this.freeShippingNotificationEnabled,
    this.deliveryDate,
    this.isRental,
    this.rentalStartDate,
    this.rentalEndDate,
    this.availableEndDate,
    this.manageInventoryMethod,
    this.stockAvailability,
    this.displayBackInStockSubscription,
    this.emailAFriendEnabled,
    this.compareProductsEnabled,
    this.pageShareCode,
    this.productPrice,
    this.addToCart,
    this.breadcrumb,
    this.productTags,
    this.productAttributes,
    this.productSpecificationModel,
    this.productManufacturers,
    this.productReviewOverview,
    this.productEstimateShipping,
    this.tierPrices,
    this.associatedProducts,
    this.displayDiscontinuedMessage,
    this.currentStoreName,
    this.inStock,
    this.allowAddingOnlyExistingAttributeCombinations,
    this.id,
    this.customProperties,
  });

  factory ProductDetailsModelResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductDetailsModelResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDetailsModelResponseToJson(this);
}
