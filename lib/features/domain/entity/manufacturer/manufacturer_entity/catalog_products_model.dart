// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/available_sort_option.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/available_view_mode.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/manufacturer_filter.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/page_size_option.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/price_range_filter.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/specification_filter.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/product_entity.dart';
import 'package:equatable/equatable.dart';

class CatalogProductsModelEntity extends Equatable {
  final bool useAjaxLoading;
  final String? warningMessage;
  final String? noResultMessage;
  final PriceRangeFilterEntity priceRangeFilter;
  final SpecificationFilterEntity specificationFilter;
  final ManufacturerFilterEntity manufacturerFilter;
  final bool allowProductSorting;
  final List<AvailableSortOptionEntity> availableSortOptions;
  final bool allowProductViewModeChanging;
  final List<AvailableViewModeEntity> availableViewModes;
  final bool allowCustomersToSelectPageSize;
  final List<PageSizeOptionEntity> pageSizeOptions;
  final int orderBy;
  final String viewMode;
  final List<ProductEntity> products;
  final int pageIndex;
  final int pageNumber;
  final int pageSize;
  final int totalItems;
  final int totalPages;
  final int firstItem;
  final int lastItem;
  final bool hasPreviousPage;
  final bool hasNextPage;
  final CustomPropertiesEntity customProperties;

  const CatalogProductsModelEntity({
    required this.useAjaxLoading,
    required this.warningMessage,
    required this.noResultMessage,
    required this.priceRangeFilter,
    required this.specificationFilter,
    required this.manufacturerFilter,
    required this.allowProductSorting,
    required this.availableSortOptions,
    required this.allowProductViewModeChanging,
    required this.availableViewModes,
    required this.allowCustomersToSelectPageSize,
    required this.pageSizeOptions,
    required this.orderBy,
    required this.viewMode,
    required this.products,
    required this.pageIndex,
    required this.pageNumber,
    required this.pageSize,
    required this.totalItems,
    required this.totalPages,
    required this.firstItem,
    required this.lastItem,
    required this.hasPreviousPage,
    required this.hasNextPage,
    required this.customProperties,
  });

  CatalogProductsModelEntity copyWith({
    bool? useAjaxLoading,
    String? warningMessage,
    String? noResultMessage,
    PriceRangeFilterEntity? priceRangeFilter,
    SpecificationFilterEntity? specificationFilter,
    ManufacturerFilterEntity? manufacturerFilter,
    bool? allowProductSorting,
    List<AvailableSortOptionEntity>? availableSortOptions,
    bool? allowProductViewModeChanging,
    List<AvailableViewModeEntity>? availableViewModes,
    bool? allowCustomersToSelectPageSize,
    List<PageSizeOptionEntity>? pageSizeOptions,
    int? orderBy,
    String? viewMode,
    List<ProductEntity>? products,
    int? pageIndex,
    int? pageNumber,
    int? pageSize,
    int? totalItems,
    int? totalPages,
    int? firstItem,
    int? lastItem,
    bool? hasPreviousPage,
    bool? hasNextPage,
    CustomPropertiesEntity? customProperties,
  }) {
    return CatalogProductsModelEntity(
      useAjaxLoading: useAjaxLoading ?? this.useAjaxLoading,
      warningMessage: warningMessage ?? this.warningMessage,
      noResultMessage: noResultMessage ?? this.noResultMessage,
      priceRangeFilter: priceRangeFilter ?? this.priceRangeFilter,
      specificationFilter: specificationFilter ?? this.specificationFilter,
      manufacturerFilter: manufacturerFilter ?? this.manufacturerFilter,
      allowProductSorting: allowProductSorting ?? this.allowProductSorting,
      availableSortOptions: availableSortOptions ?? this.availableSortOptions,
      allowProductViewModeChanging:
          allowProductViewModeChanging ?? this.allowProductViewModeChanging,
      availableViewModes: availableViewModes ?? this.availableViewModes,
      allowCustomersToSelectPageSize:
          allowCustomersToSelectPageSize ?? this.allowCustomersToSelectPageSize,
      pageSizeOptions: pageSizeOptions ?? this.pageSizeOptions,
      orderBy: orderBy ?? this.orderBy,
      viewMode: viewMode ?? this.viewMode,
      products: products ?? this.products,
      pageIndex: pageIndex ?? this.pageIndex,
      pageNumber: pageNumber ?? this.pageNumber,
      pageSize: pageSize ?? this.pageSize,
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      firstItem: firstItem ?? this.firstItem,
      lastItem: lastItem ?? this.lastItem,
      hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      useAjaxLoading,
      warningMessage,
      noResultMessage,
      priceRangeFilter,
      specificationFilter,
      manufacturerFilter,
      allowProductSorting,
      availableSortOptions,
      allowProductViewModeChanging,
      availableViewModes,
      allowCustomersToSelectPageSize,
      pageSizeOptions,
      orderBy,
      viewMode,
      products,
      pageIndex,
      pageNumber,
      pageSize,
      totalItems,
      totalPages,
      firstItem,
      lastItem,
      hasPreviousPage,
      hasNextPage,
      customProperties,
    ];
  }
}
