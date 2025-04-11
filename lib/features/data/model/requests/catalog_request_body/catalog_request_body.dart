// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_request_body.g.dart';

@JsonSerializable()
class CatalogRequestBody {
  const CatalogRequestBody({
    required this.price,
    required this.specificationOptionIds,
    required this.manufacturerIds,
    required this.orderBy,
    required this.viewMode,
    required this.pageIndex,
    required this.pageNumber,
    required this.pageSize,
    required this.totalItems,
    required this.totalPages,
    required this.firstItem,
    required this.lastItem,
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.customProperties,
  });
  final String price;
  @JsonKey(name: 'specification_option_ids')
  final List<int> specificationOptionIds;
  @JsonKey(name: 'manufacturer_ids')
  final List<int> manufacturerIds;
  @JsonKey(name: 'order_by')
  final int orderBy;
  @JsonKey(name: 'view_mode')
  final String viewMode;
  @JsonKey(name: 'page_index')
  final int pageIndex;
  @JsonKey(name: 'page_number')
  final int pageNumber;
  @JsonKey(name: 'page_size')
  final int pageSize;
  @JsonKey(name: 'total_items')
  final int totalItems;
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @JsonKey(name: 'first_item')
  final int firstItem;
  @JsonKey(name: 'last_item')
  final int lastItem;
  @JsonKey(name: 'has_previous_page')
  final bool hasPreviousPage;
  @JsonKey(name: 'has_next_page')
  final bool hasNextPage;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  factory CatalogRequestBody.fromJson(Map<String, dynamic> json) {
    return _$CatalogRequestBodyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CatalogRequestBodyToJson(this);
}
