// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailsModelResponse _$ProductDetailsModelResponseFromJson(
        Map<String, dynamic> json) =>
    ProductDetailsModelResponse(
      name: json['name'] as String,
      defaultPictureZoomEnabled: json['default_picture_zoom_enabled'] as bool?,
      defaultPictureModel: json['default_picture_model'] == null
          ? null
          : DefaultPictureModelResponse.fromJson(
              json['default_picture_model'] as Map<String, dynamic>),
      pictureModels: (json['picture_models'] as List<dynamic>?)
          ?.map((e) =>
              DefaultPictureModelResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      shortDescription: json['short_description'] as String?,
      fullDescription: json['full_description'] as String?,
      metaKeywords: json['meta_keywords'] as String?,
      metaDescription: json['meta_description'] as String?,
      metaTitle: json['meta_title'] as String?,
      seName: json['se_name'] as String?,
      visibleIndividually: json['visible_individually'] as bool?,
      productType: json['product_type'] as String?,
      showSku: json['show_sku'] as bool?,
      sku: json['sku'] as String?,
      showManufacturerPartNumber:
          json['show_manufacturer_part_number'] as bool?,
      manufacturerPartNumber: json['manufacturer_part_number'] as String?,
      showGtin: json['show_gtin'] as bool?,
      gtin: json['gtin'] as String?,
      showVendor: json['show_vendor'] as bool?,
      vendorModel: json['vendor_model'] == null
          ? null
          : VendorModelResponse.fromJson(
              json['vendor_model'] as Map<String, dynamic>),
      hasSampleDownload: json['has_sample_download'] as bool?,
      giftCard: json['gift_card'] == null
          ? null
          : GiftCardResponse.fromJson(
              json['gift_card'] as Map<String, dynamic>),
      isShipEnabled: json['is_ship_enabled'] as bool?,
      isFreeShipping: json['is_free_shipping'] as bool?,
      freeShippingNotificationEnabled:
          json['free_shipping_notification_enabled'] as bool?,
      deliveryDate: json['delivery_date'] as String?,
      isRental: json['is_rental'] as bool?,
      rentalStartDate: json['rental_start_date'] == null
          ? null
          : DateTime.parse(json['rental_start_date'] as String),
      rentalEndDate: json['rental_end_date'] == null
          ? null
          : DateTime.parse(json['rental_end_date'] as String),
      availableEndDate: json['available_end_date'] == null
          ? null
          : DateTime.parse(json['available_end_date'] as String),
      manageInventoryMethod: json['manage_inventory_method'] as String?,
      stockAvailability: json['stock_availability'] as String?,
      displayBackInStockSubscription:
          json['display_back_in_stock_subscription'] as bool?,
      emailAFriendEnabled: json['email_a_friend_enabled'] as bool?,
      compareProductsEnabled: json['compare_products_enabled'] as bool?,
      pageShareCode: json['page_share_code'] as String?,
      productPrice: json['product_price'] == null
          ? null
          : ProductPriceResponse.fromJson(
              json['product_price'] as Map<String, dynamic>),
      addToCart: json['add_to_cart'] == null
          ? null
          : AddToCartResponse.fromJson(
              json['add_to_cart'] as Map<String, dynamic>),
      breadcrumb: json['breadcrumb'] == null
          ? null
          : BreadcrumbResponse.fromJson(
              json['breadcrumb'] as Map<String, dynamic>),
      productTags: (json['product_tags'] as List<dynamic>?)
          ?.map((e) => ProductTagResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      productAttributes: (json['product_attributes'] as List<dynamic>?)
          ?.map((e) =>
              ProductAttributeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      productSpecificationModel: json['product_specification_model'] == null
          ? null
          : ProductSpecificationModelResponse.fromJson(
              json['product_specification_model'] as Map<String, dynamic>),
      productManufacturers: (json['product_manufacturers'] as List<dynamic>?)
          ?.map((e) =>
              ProductManufacturerResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      productReviewOverview: json['product_review_overview'] == null
          ? null
          : ProductReviewOverviewResponse.fromJson(
              json['product_review_overview'] as Map<String, dynamic>),
      productEstimateShipping: json['product_estimate_shipping'] == null
          ? null
          : ProductEstimateShippingResponse.fromJson(
              json['product_estimate_shipping'] as Map<String, dynamic>),
      tierPrices: (json['tier_prices'] as List<dynamic>?)
          ?.map((e) => TierPriceResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      associatedProducts: json['associated_products'] as List<dynamic>?,
      displayDiscontinuedMessage: json['display_discontinued_message'] as bool?,
      currentStoreName: json['current_store_name'] as String?,
      inStock: json['in_stock'] as bool?,
      allowAddingOnlyExistingAttributeCombinations:
          json['allow_adding_only_existing_attribute_combinations'] as bool?,
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductDetailsModelResponseToJson(
        ProductDetailsModelResponse instance) =>
    <String, dynamic>{
      'default_picture_zoom_enabled': instance.defaultPictureZoomEnabled,
      'default_picture_model': instance.defaultPictureModel,
      'picture_models': instance.pictureModels,
      'name': instance.name,
      'short_description': instance.shortDescription,
      'full_description': instance.fullDescription,
      'meta_keywords': instance.metaKeywords,
      'meta_description': instance.metaDescription,
      'meta_title': instance.metaTitle,
      'se_name': instance.seName,
      'visible_individually': instance.visibleIndividually,
      'product_type': instance.productType,
      'show_sku': instance.showSku,
      'sku': instance.sku,
      'show_manufacturer_part_number': instance.showManufacturerPartNumber,
      'manufacturer_part_number': instance.manufacturerPartNumber,
      'show_gtin': instance.showGtin,
      'gtin': instance.gtin,
      'show_vendor': instance.showVendor,
      'vendor_model': instance.vendorModel,
      'has_sample_download': instance.hasSampleDownload,
      'gift_card': instance.giftCard,
      'is_ship_enabled': instance.isShipEnabled,
      'is_free_shipping': instance.isFreeShipping,
      'free_shipping_notification_enabled':
          instance.freeShippingNotificationEnabled,
      'delivery_date': instance.deliveryDate,
      'is_rental': instance.isRental,
      'rental_start_date': instance.rentalStartDate?.toIso8601String(),
      'rental_end_date': instance.rentalEndDate?.toIso8601String(),
      'available_end_date': instance.availableEndDate?.toIso8601String(),
      'manage_inventory_method': instance.manageInventoryMethod,
      'stock_availability': instance.stockAvailability,
      'display_back_in_stock_subscription':
          instance.displayBackInStockSubscription,
      'email_a_friend_enabled': instance.emailAFriendEnabled,
      'compare_products_enabled': instance.compareProductsEnabled,
      'page_share_code': instance.pageShareCode,
      'product_price': instance.productPrice,
      'add_to_cart': instance.addToCart,
      'breadcrumb': instance.breadcrumb,
      'product_tags': instance.productTags,
      'product_attributes': instance.productAttributes,
      'product_specification_model': instance.productSpecificationModel,
      'product_manufacturers': instance.productManufacturers,
      'product_review_overview': instance.productReviewOverview,
      'product_estimate_shipping': instance.productEstimateShipping,
      'tier_prices': instance.tierPrices,
      'associated_products': instance.associatedProducts,
      'display_discontinued_message': instance.displayDiscontinuedMessage,
      'current_store_name': instance.currentStoreName,
      'in_stock': instance.inStock,
      'allow_adding_only_existing_attribute_combinations':
          instance.allowAddingOnlyExistingAttributeCombinations,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
