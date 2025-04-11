// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogProductsModelResponse _$CatalogProductsModelResponseFromJson(
        Map<String, dynamic> json) =>
    CatalogProductsModelResponse(
      useAjaxLoading: json['use_ajax_loading'] as bool?,
      warningMessage: json['warning_message'] as String?,
      noResultMessage: json['no_result_message'] as String?,
      priceRangeFilter: json['price_range_filter'] == null
          ? null
          : PriceRangeFilterResponse.fromJson(
              json['price_range_filter'] as Map<String, dynamic>),
      specificationFilter: json['specification_filter'] == null
          ? null
          : SpecificationFilterResponse.fromJson(
              json['specification_filter'] as Map<String, dynamic>),
      manufacturerFilter: json['manufacturer_filter'] == null
          ? null
          : ManufacturerFilterResponse.fromJson(
              json['manufacturer_filter'] as Map<String, dynamic>),
      allowProductSorting: json['allow_product_sorting'] as bool?,
      availableSortOptions: (json['available_sort_options'] as List<dynamic>?)
          ?.map((e) =>
              AvailableSortOptionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      allowProductViewModeChanging:
          json['allow_product_view_mode_changing'] as bool?,
      availableViewModes: (json['available_view_modes'] as List<dynamic>?)
          ?.map((e) =>
              AvailableViewModeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      allowCustomersToSelectPageSize:
          json['allow_customers_to_select_page_size'] as bool?,
      pageSizeOptions: (json['page_size_options'] as List<dynamic>?)
          ?.map(
              (e) => PageSizeOptionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderBy: (json['order_by'] as num?)?.toInt(),
      viewMode: json['view_mode'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageIndex: (json['page_index'] as num?)?.toInt(),
      pageNumber: (json['page_number'] as num?)?.toInt(),
      pageSize: (json['page_size'] as num?)?.toInt(),
      totalItems: (json['total_items'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      firstItem: (json['first_item'] as num?)?.toInt(),
      lastItem: (json['last_item'] as num?)?.toInt(),
      hasPreviousPage: json['has_previous_page'] as bool?,
      hasNextPage: json['has_next_page'] as bool?,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogProductsModelResponseToJson(
        CatalogProductsModelResponse instance) =>
    <String, dynamic>{
      'use_ajax_loading': instance.useAjaxLoading,
      'warning_message': instance.warningMessage,
      'no_result_message': instance.noResultMessage,
      'price_range_filter': instance.priceRangeFilter,
      'specification_filter': instance.specificationFilter,
      'manufacturer_filter': instance.manufacturerFilter,
      'allow_product_sorting': instance.allowProductSorting,
      'available_sort_options': instance.availableSortOptions,
      'allow_product_view_mode_changing': instance.allowProductViewModeChanging,
      'available_view_modes': instance.availableViewModes,
      'allow_customers_to_select_page_size':
          instance.allowCustomersToSelectPageSize,
      'page_size_options': instance.pageSizeOptions,
      'order_by': instance.orderBy,
      'view_mode': instance.viewMode,
      'products': instance.products,
      'page_index': instance.pageIndex,
      'page_number': instance.pageNumber,
      'page_size': instance.pageSize,
      'total_items': instance.totalItems,
      'total_pages': instance.totalPages,
      'first_item': instance.firstItem,
      'last_item': instance.lastItem,
      'has_previous_page': instance.hasPreviousPage,
      'has_next_page': instance.hasNextPage,
      'custom_properties': instance.customProperties,
    };
