import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/default_picture_model/default_picture_model_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/groups_mapper/groups_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/values_mapper/values_mapper.dart';
import 'package:amamini_client/features/data/model/responses/product/product_price.dart';
import 'package:amamini_client/features/data/model/responses/product/product_specification_model.dart';
import 'package:amamini_client/features/data/model/responses/product_details/add_to_cart.dart';
import 'package:amamini_client/features/data/model/responses/product_details/allowed_quantity.dart';
import 'package:amamini_client/features/data/model/responses/product_details/available_country.dart';
import 'package:amamini_client/features/data/model/responses/product_details/available_state.dart';
import 'package:amamini_client/features/data/model/responses/product_details/breadcrumb.dart';
import 'package:amamini_client/features/data/model/responses/product_details/category_breadcrumb.dart';
import 'package:amamini_client/features/data/model/responses/product_details/gift_card.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_attribute.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_details_model.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_details_response.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_estimate_shipping.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_manufacturer.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_review_overview.dart';
import 'package:amamini_client/features/data/model/responses/product_details/product_tag.dart';
import 'package:amamini_client/features/data/model/responses/product_details/tier_price.dart';
import 'package:amamini_client/features/data/model/responses/product_details/vendor_model.dart';
import 'package:amamini_client/features/domain/entity/product/product_price.dart';
import 'package:amamini_client/features/domain/entity/product/product_specification_model.dart';
import 'package:amamini_client/features/domain/entity/product_details/add_to_cart.dart';
import 'package:amamini_client/features/domain/entity/product_details/allowed_quantity.dart';
import 'package:amamini_client/features/domain/entity/product_details/available_country.dart';
import 'package:amamini_client/features/domain/entity/product_details/available_state.dart';
import 'package:amamini_client/features/domain/entity/product_details/breadcrumb.dart';
import 'package:amamini_client/features/domain/entity/product_details/category_breadcrumb.dart';
import 'package:amamini_client/features/domain/entity/product_details/gift_card.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_attribute.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_details_entity.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_details_model.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_estimate_shipping.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_manufacturer.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_review_overview.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_tag.dart';
import 'package:amamini_client/features/domain/entity/product_details/tier_price.dart';
import 'package:amamini_client/features/domain/entity/product_details/vendor_model.dart';

extension ProductDetailsMapper on ProductDetailsResponse {
  ProductDetailsEntity toEntity() {
    return ProductDetailsEntity(
      productTemplateViewPath: productTemplateViewPath,
      productDetailsModel: productDetailsModel.toEntity(),
    );
  }
}

extension ProductDetailsModelMapper on ProductDetailsModelResponse {
  ProductDetailsModelEntity toEntity() {
    return ProductDetailsModelEntity(
      defaultPictureZoomEnabled: defaultPictureZoomEnabled,
      defaultPictureModel: defaultPictureModel?.toEntity(),
      pictureModels: pictureModels
          ?.map((pictureModel) => pictureModel.toEntity())
          .toList(),
      name: name,
      shortDescription: shortDescription,
      fullDescription: fullDescription,
      metaKeywords: metaKeywords,
      metaDescription: metaDescription,
      metaTitle: metaTitle,
      seName: seName,
      visibleIndividually: visibleIndividually,
      productType: productType,
      showSku: showSku,
      sku: sku,
      showManufacturerPartNumber: showManufacturerPartNumber,
      manufacturerPartNumber: manufacturerPartNumber,
      showGtin: showGtin,
      gtin: gtin,
      showVendor: showVendor,
      vendorModel: vendorModel?.toEntity(),
      hasSampleDownload: hasSampleDownload,
      giftCard: giftCard?.toEntity(),
      isShipEnabled: isShipEnabled,
      isFreeShipping: isFreeShipping,
      freeShippingNotificationEnabled: freeShippingNotificationEnabled,
      deliveryDate: deliveryDate,
      isRental: isRental,
      rentalStartDate: rentalStartDate,
      rentalEndDate: rentalEndDate,
      availableEndDate: availableEndDate,
      manageInventoryMethod: manageInventoryMethod,
      stockAvailability: stockAvailability,
      displayBackInStockSubscription: displayBackInStockSubscription,
      emailAFriendEnabled: emailAFriendEnabled,
      compareProductsEnabled: compareProductsEnabled,
      pageShareCode: pageShareCode,
      productPrice: productPrice?.toEntity(),
      addToCart: addToCart?.toEntity(),
      breadcrumb: breadcrumb?.toEntity(),
      productTags: productTags?.map((tag) => tag.toEntity()).toList(),
      productAttributes: productAttributes
          ?.map((productAttribute) => productAttribute.toEntity())
          .toList(),
      productSpecificationModel: productSpecificationModel?.toEntity(),
      productManufacturers: productManufacturers
          ?.map((productManufacturer) => productManufacturer.toEntity())
          .toList(),
      productReviewOverview: productReviewOverview?.toEntity(),
      productEstimateShipping: productEstimateShipping?.toEntity(),
      tierPrices: tierPrices?.map((tierPrice) => tierPrice.toEntity()).toList(),
      associatedProducts: associatedProducts,
      displayDiscontinuedMessage: displayDiscontinuedMessage,
      currentStoreName: currentStoreName,
      inStock: inStock,
      allowAddingOnlyExistingAttributeCombinations:
          allowAddingOnlyExistingAttributeCombinations,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension VendorModelMapper on VendorModelResponse {
  VendorModelEntity toEntity() {
    return VendorModelEntity(
      name: name,
      seName: seName,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension GiftCardMapper on GiftCardResponse {
  GiftCardEntity toEntity() {
    return GiftCardEntity(
      isGiftCard: isGiftCard,
      recipientName: recipientName,
      recipientEmail: recipientEmail,
      senderName: senderName,
      senderEmail: senderEmail,
      message: message,
      giftCardType: giftCardType,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension ProductPriceMapper on ProductPriceResponse {
  ProductPriceEntity toEntity() {
    return ProductPriceEntity(
      oldPrice: oldPrice,
      oldPriceValue: oldPriceValue,
      price: price ?? '',
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

extension AddToCartMapper on AddToCartResponse {
  AddToCartEntity toEntity() {
    return AddToCartEntity(
      productId: productId,
      enteredQuantity: enteredQuantity,
      minimumQuantityNotification: minimumQuantityNotification,
      allowedQuantities: allowedQuantities
          ?.map((allowedQuantity) => allowedQuantity.toEntity())
          .toList(),
      customerEntersPrice: customerEntersPrice,
      customerEnteredPrice: customerEnteredPrice,
      customerEnteredPriceRange: customerEnteredPriceRange,
      disableBuyButton: disableBuyButton,
      disableWishlistButton: disableWishlistButton,
      isRental: isRental,
      availableForPreOrder: availableForPreOrder,
      preOrderAvailabilityStartDateTimeUtc:
          preOrderAvailabilityStartDateTimeUtc,
      preOrderAvailabilityStartDateTimeUserTime:
          preOrderAvailabilityStartDateTimeUserTime,
      updatedShoppingCartItemId: updatedShoppingCartItemId,
      updateShoppingCartItemType: updateShoppingCartItemType,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension AllowedQuantityMapper on AllowedQuantityResponse {
  AllowedQuantityEntity toEntity() {
    return AllowedQuantityEntity(
      disabled: disabled,
      group: group?.toEntity(),
      selected: selected,
      text: text,
      value: value,
    );
  }
}

extension BreadcrumbMapper on BreadcrumbResponse {
  BreadcrumbEntity toEntity() {
    return BreadcrumbEntity(
      enabled: enabled,
      productId: productId,
      productName: productName,
      productSeName: productSeName,
      categoryBreadcrumb: categoryBreadcrumb
          ?.map((categoryBreadcrumb) => categoryBreadcrumb.toEntity())
          .toList(),
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension CategoryBreadCrumbMapper on CategoryBreadcrumbResponse {
  CategoryBreadcrumbEntity toEntity() {
    return CategoryBreadcrumbEntity(
      name: name,
      seName: seName,
      numberOfProducts: numberOfProducts,
      includeInTopMenu: includeInTopMenu,
      subCategories: subCategories,
      haveSubCategories: haveSubCategories,
      route: route,
      pictureModel: pictureModel?.toEntity(),
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension ProductTagsMapper on ProductTagResponse {
  ProductTagEntity toEntity() {
    return ProductTagEntity(
      name: name,
      seName: seName,
      productCount: productCount,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension ProductAttributeMapper on ProductAttributeResponse {
  ProductAttributeEntity toEntity() {
    return ProductAttributeEntity(
      productId: productId,
      productAttributeId: productAttributeId,
      name: name,
      description: description,
      textPrompt: textPrompt,
      isRequired: isRequired,
      defaultValue: defaultValue,
      selectedDay: selectedDay,
      selectedMonth: selectedMonth,
      selectedYear: selectedYear,
      hasCondition: hasCondition,
      allowedFileExtensions: allowedFileExtensions,
      attributeControlType: attributeControlType,
      values: values?.map((value) => value.toEntity()).toList(),
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension ProductSpecificationModelMapper on ProductSpecificationModelResponse {
  ProductSpecificationModelEntity toEntity() {
    return ProductSpecificationModelEntity(
      groups: groups?.map((group) => group.toEntity()).toList(),
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension ProductManufacturerMapper on ProductManufacturerResponse {
  ProductManufacturerEntity toEntity() {
    return ProductManufacturerEntity(
      name: name,
      seName: seName,
      isActive: isActive,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension ProductReviewOverviewMapper on ProductReviewOverviewResponse {
  ProductReviewOverviewEntity toEntity() {
    return ProductReviewOverviewEntity(
      productId: productId,
      ratingSum: ratingSum,
      totalReviews: totalReviews,
      allowCustomerReviews: allowCustomerReviews,
      canAddNewReview: canAddNewReview,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension ProductEstimateShippingMapper on ProductEstimateShippingResponse {
  ProductEstimateShippingEntity toEntity() {
    return ProductEstimateShippingEntity(
      productId: productId,
      requestDelay: requestDelay,
      enabled: enabled,
      countryId: countryId,
      stateProvinceId: stateProvinceId,
      zipPostalCode: zipPostalCode,
      useCity: useCity,
      city: city,
      availableCountries: availableCountries
          ?.map((availableCountry) => availableCountry.toEntity())
          .toList(),
      availableStates: availableStates
          ?.map((availableState) => availableState.toEntity())
          .toList(),
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension AvailableCountryMapper on AvailableCountryResponse {
  AvailableCountryEntity toEntity() {
    return AvailableCountryEntity(
      disabled: disabled,
      group: group?.toEntity(),
      selected: selected,
      text: text,
      value: value,
    );
  }
}

extension AvailableStateMapper on AvailableStateResponse {
  AvailableStateEntity toEntity() {
    return AvailableStateEntity(
      disabled: disabled,
      group: group?.toEntity(),
      selected: selected,
      text: text,
      value: value,
    );
  }
}

extension TierPriceMapper on TierPriceResponse {
  TierPriceEntity toEntity() {
    return TierPriceEntity(
      price: price,
      priceValue: priceValue,
      quantity: quantity,
      customProperties: customProperties?.toEntity(),
    );
  }
}
