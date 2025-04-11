import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/available_view_mode.dart';
import 'package:amamini_client/features/data/model/responses/manufacturer/catalog_products_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_products_request.g.dart';

@JsonSerializable()
class SearchProductsRequest {
  @JsonKey(name: 'model')
  final ModelRequest model;
  @JsonKey(name: 'command')
  final CommandRequest command;
  SearchProductsRequest({required this.model, required this.command});
  factory SearchProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchProductsRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SearchProductsRequestToJson(this);

  SearchProductsRequest copyWith({
    ModelRequest? model,
    CommandRequest? command,
  }) {
    return SearchProductsRequest(
      model: model ?? this.model,
      command: command ?? this.command,
    );
  }
}

@JsonSerializable()
class CommandRequest {
  final String? price;
  final List<int>? specificationOptionIds;
  final List<int>? manufacturerIds;
  final int? orderBy;
  final String? viewMode;
  final int? pageIndex;
  final int? pageNumber;
  final int? pageSize;
  final int? totalItems;
  final int? totalPages;
  final int? firstItem;
  final int? lastItem;
  final bool? hasPreviousPage;
  final bool? hasNextPage;
  final CustomPropertiesResponse? customProperties;
  CommandRequest({
    this.price,
    this.specificationOptionIds,
    this.manufacturerIds,
    this.orderBy,
    this.viewMode,
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
  factory CommandRequest.fromJson(Map<String, dynamic> json) =>
      _$CommandRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CommandRequestToJson(this);
}

@JsonSerializable()
class ModelRequest {
  final String? q;
  final int cid;
  final bool isc;
  final int mid;
  final int vid;
  final bool sid;
  final bool advs;
  final bool asv;
  final CatalogProductsModelResponse? catalogProductsModel;
  final List<AvailableViewModeResponse>? availableCategories;
  final List<AvailableViewModeResponse>? availableManufacturers;
  final List<AvailableViewModeResponse>? availableVendors;
  final CustomPropertiesResponse? customProperties;
  ModelRequest({
    this.q,
    this.cid = 0,
    this.isc = false,
    this.mid = 0,
    this.vid = 0,
    this.sid = false,
    this.advs = false,
    this.asv = false,
    this.catalogProductsModel,
    this.availableCategories,
    this.availableManufacturers,
    this.availableVendors,
    this.customProperties,
  });
  factory ModelRequest.fromJson(Map<String, dynamic> json) =>
      _$ModelRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ModelRequestToJson(this);
  ModelRequest copyWith({
    String? q,
    int? cid,
    bool? isc,
    int? mid,
    int? vid,
    bool? sid,
    bool? advs,
    bool? asv,
    CatalogProductsModelResponse? catalogProductsModel,
    List<AvailableViewModeResponse>? availableCategories,
    List<AvailableViewModeResponse>? availableManufacturers,
    List<AvailableViewModeResponse>? availableVendors,
    CustomPropertiesResponse? customProperties,
  }) {
    return ModelRequest(
      q: q ?? this.q,
      cid: cid ?? this.cid,
      isc: isc ?? this.isc,
      mid: mid ?? this.mid,
      vid: vid ?? this.vid,
      sid: sid ?? this.sid,
      advs: advs ?? this.advs,
      asv: asv ?? this.asv,
      catalogProductsModel: catalogProductsModel ?? this.catalogProductsModel,
      availableCategories: availableCategories ?? this.availableCategories,
      availableManufacturers:
          availableManufacturers ?? this.availableManufacturers,
      availableVendors: availableVendors ?? this.availableVendors,
      customProperties: customProperties ?? this.customProperties,
    );
  }
}
