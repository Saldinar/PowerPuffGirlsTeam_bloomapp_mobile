// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogRequestBody _$CatalogRequestBodyFromJson(Map<String, dynamic> json) =>
    CatalogRequestBody(
      price: json['price'] as String,
      specificationOptionIds:
          (json['specification_option_ids'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      manufacturerIds: (json['manufacturer_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      orderBy: (json['order_by'] as num).toInt(),
      viewMode: json['view_mode'] as String,
      pageIndex: (json['page_index'] as num).toInt(),
      pageNumber: (json['page_number'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
      totalItems: (json['total_items'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      firstItem: (json['first_item'] as num).toInt(),
      lastItem: (json['last_item'] as num).toInt(),
      hasPreviousPage: json['has_previous_page'] as bool,
      hasNextPage: json['has_next_page'] as bool,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogRequestBodyToJson(CatalogRequestBody instance) =>
    <String, dynamic>{
      'price': instance.price,
      'specification_option_ids': instance.specificationOptionIds,
      'manufacturer_ids': instance.manufacturerIds,
      'order_by': instance.orderBy,
      'view_mode': instance.viewMode,
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
