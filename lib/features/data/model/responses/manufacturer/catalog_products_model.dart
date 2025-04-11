// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/available_sort_option.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/available_view_mode.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/manufacturer_filter.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/page_size_option.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/price_range_filter.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/specification_filter.dart';
import 'package:amamini_client/features/data/model/responses/product/product_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_products_model.g.dart';

@JsonSerializable()
class CatalogProductsModelResponse {
  @JsonKey(name: 'use_ajax_loading')
  final bool? useAjaxLoading;
  @JsonKey(name: 'warning_message')
  final String? warningMessage;
  @JsonKey(name: 'no_result_message')
  final String? noResultMessage;
  @JsonKey(name: 'price_range_filter')
  final PriceRangeFilterResponse? priceRangeFilter;
  @JsonKey(name: 'specification_filter')
  final SpecificationFilterResponse? specificationFilter;
  @JsonKey(name: 'manufacturer_filter')
  final ManufacturerFilterResponse? manufacturerFilter;
  @JsonKey(name: 'allow_product_sorting')
  final bool? allowProductSorting;
  @JsonKey(name: 'available_sort_options')
  final List<AvailableSortOptionResponse>? availableSortOptions;
  @JsonKey(name: 'allow_product_view_mode_changing')
  final bool? allowProductViewModeChanging;
  @JsonKey(name: 'available_view_modes')
  final List<AvailableViewModeResponse>? availableViewModes;
  @JsonKey(name: 'allow_customers_to_select_page_size')
  final bool? allowCustomersToSelectPageSize;
  @JsonKey(name: 'page_size_options')
  final List<PageSizeOptionResponse>? pageSizeOptions;
  @JsonKey(name: 'order_by')
  final int? orderBy;
  @JsonKey(name: 'view_mode')
  final String? viewMode;
  final List<ProductResponse>? products;
  @JsonKey(name: 'page_index')
  final int? pageIndex;
  @JsonKey(name: 'page_number')
  final int? pageNumber;
  @JsonKey(name: 'page_size')
  final int? pageSize;
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'first_item')
  final int? firstItem;
  @JsonKey(name: 'last_item')
  final int? lastItem;
  @JsonKey(name: 'has_previous_page')
  final bool? hasPreviousPage;
  @JsonKey(name: 'has_next_page')
  final bool? hasNextPage;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const CatalogProductsModelResponse({
    this.useAjaxLoading,
    this.warningMessage,
    this.noResultMessage,
    this.priceRangeFilter,
    this.specificationFilter,
    this.manufacturerFilter,
    this.allowProductSorting,
    this.availableSortOptions,
    this.allowProductViewModeChanging,
    this.availableViewModes,
    this.allowCustomersToSelectPageSize,
    this.pageSizeOptions,
    this.orderBy,
    this.viewMode,
    this.products,
    this.pageIndex,
    this.pageNumber,
    this.pageSize,
    this.totalItems,
    this.totalPages,
    this.firstItem,
    this.lastItem,
    this.hasPreviousPage,
    this.hasNextPage,
    this.customProperties,
  });

  factory CatalogProductsModelResponse.fromJson(Map<String, dynamic> json) {
    return _$CatalogProductsModelResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CatalogProductsModelResponseToJson(this);
}
