import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/default_picture_model/default_picture_model_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/attribute_mapper/attribute_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/groups_mapper/groups_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/product_mappers/product_mapper.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/available_price_range.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/available_sort_option.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/available_view_mode.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/catalog_products_model.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/manufacturer.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/manufacturer_filter.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/manufacturer_response.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/page_size_option.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/price_range_filter.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/selected_price_range.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/specification_filter.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/available_price_range.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/available_sort_option.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/available_view_mode.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/catalog_products_model.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/manufacturer.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/manufacturer_entity.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/manufacturer_filter.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/page_size_option.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/price_range_filter.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/selected_price_range.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/specification_filter.dart';

extension ManufacturerMapper on ManufacturerResponse {
  ManufacturerEntity toEntity() {
    return ManufacturerEntity(
      name: name,
      description: description,
      metaKeywords: metaKeywords,
      metaDescription: metaDescription,
      metaTitle: metaTitle,
      seName: seName,
      pictureModel: pictureModel.toEntity(),
      featuredProducts:
          featuredProducts.map((product) => product.toEntity()).toList(),
      catalogProductsModel: catalogProductsModel.toEntity(),
      id: id,
      customProperties: customProperties.toEntity(),
    );
  }
}

extension CatalogProductsModelMapper on CatalogProductsModelResponse {
  CatalogProductsModelEntity toEntity() {
    return CatalogProductsModelEntity(
      useAjaxLoading: useAjaxLoading ?? false,
      warningMessage: warningMessage,
      noResultMessage: noResultMessage,
      priceRangeFilter: priceRangeFilter!.toEntity(),
      specificationFilter: specificationFilter!.toEntity(),
      manufacturerFilter: manufacturerFilter!.toEntity(),
      allowProductSorting: allowProductSorting ?? false,
      availableSortOptions:
          availableSortOptions!.map((option) => option.toEntity()).toList(),
      allowProductViewModeChanging: allowProductViewModeChanging ?? false,
      availableViewModes:
          availableViewModes!.map((viewMode) => viewMode.toEntity()).toList(),
      allowCustomersToSelectPageSize: allowCustomersToSelectPageSize ?? false,
      pageSizeOptions:
          pageSizeOptions!.map((option) => option.toEntity()).toList(),
      orderBy: orderBy ?? 0,
      viewMode: viewMode ?? '',
      products: products!.map((product) => product.toEntity()).toList(),
      pageIndex: pageIndex ?? 0,
      pageNumber: pageNumber ?? 0,
      pageSize: pageSize ?? 0,
      totalItems: totalItems ?? 0,
      totalPages: totalPages ?? 0,
      firstItem: firstItem ?? 0,
      lastItem: lastItem ?? 0,
      hasPreviousPage: hasPreviousPage ?? false,
      hasNextPage: hasNextPage ?? false,
      customProperties: customProperties!.toEntity(),
    );
  }
}

extension PriceRangeFilterMapper on PriceRangeFilterResponse {
  PriceRangeFilterEntity toEntity() {
    return PriceRangeFilterEntity(
      enabled: enabled ?? false,
      selectedPriceRange: selectedPriceRange!.toEntity(),
      availablePriceRange: availablePriceRange!.toEntity(),
      customProperties: customProperties!.toEntity(),
    );
  }
}

extension SelectedPriceRangeMapper on SelectedPriceRangeResponse {
  SelectedPriceRangeEntity toEntity() {
    return SelectedPriceRangeEntity(
      from: from ?? 0,
      to: to ?? 0,
      customProperties: customProperties!.toEntity(),
    );
  }
}

extension AvailablePriceRangeMapper on AvailablePriceRangeResponse {
  AvailablePriceRangeEntity toEntity() {
    return AvailablePriceRangeEntity(
      from: from ?? 0,
      to: to ?? 0,
      customProperties: customProperties!.toEntity(),
    );
  }
}

extension SpecificationFilterMapper on SpecificationFilterResponse {
  SpecificationFilterEntity toEntity() {
    return SpecificationFilterEntity(
      enabled: enabled ?? false,
      attributes:
          attributes?.map((attribute) => attribute.toEntity()).toList() ?? [],
      customProperties: customProperties!.toEntity(),
    );
  }
}

extension ManufacturerFilterMapper on ManufacturerFilterResponse {
  ManufacturerFilterEntity toEntity() {
    return ManufacturerFilterEntity(
      enabled: enabled ?? false,
      manufacturers: manufacturers
              ?.map((manufacturer) => manufacturer.toEntity())
              .toList() ??
          [],
      customProperties: customProperties!.toEntity(),
    );
  }
}

extension ManufacturerInfoMapper on ManufacturerInfoResponse {
  ManufacturerInfoEntity toEntity() {
    return ManufacturerInfoEntity(
      disabled: disabled ?? false,
      group: group?.toEntity(),
      selected: selected ?? false,
      text: text ?? '',
      value: value ?? '',
    );
  }
}

extension AvailableSortOptionMapper on AvailableSortOptionResponse {
  AvailableSortOptionEntity toEntity() {
    return AvailableSortOptionEntity(
      disabled: disabled ?? false,
      group: group?.toEntity(),
      selected: selected ?? false,
      text: text ?? '',
      value: value ?? '',
    );
  }
}

extension AvailableViewModeMapper on AvailableViewModeResponse {
  AvailableViewModeEntity toEntity() {
    return AvailableViewModeEntity(
      disabled: disabled ?? false,
      group: group?.toEntity(),
      selected: selected ?? false,
      text: text ?? '',
      value: value ?? '',
    );
  }
}

extension PageSizeOptionMapper on PageSizeOptionResponse {
  PageSizeOptionEntity toEntity() {
    return PageSizeOptionEntity(
      disabled: disabled ?? false,
      group: group?.toEntity(),
      selected: selected ?? false,
      text: text ?? '',
      value: value ?? '',
    );
  }
}
