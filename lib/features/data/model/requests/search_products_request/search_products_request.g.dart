// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_products_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchProductsRequest _$SearchProductsRequestFromJson(
        Map<String, dynamic> json) =>
    SearchProductsRequest(
      model: ModelRequest.fromJson(json['model'] as Map<String, dynamic>),
      command: CommandRequest.fromJson(json['command'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchProductsRequestToJson(
        SearchProductsRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'command': instance.command,
    };

CommandRequest _$CommandRequestFromJson(Map<String, dynamic> json) =>
    CommandRequest(
      price: json['price'] as String?,
      specificationOptionIds: (json['specificationOptionIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      manufacturerIds: (json['manufacturerIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      orderBy: (json['orderBy'] as num?)?.toInt(),
      viewMode: json['viewMode'] as String?,
      pageIndex: (json['pageIndex'] as num?)?.toInt(),
      pageNumber: (json['pageNumber'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalItems: (json['totalItems'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      firstItem: (json['firstItem'] as num?)?.toInt(),
      lastItem: (json['lastItem'] as num?)?.toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
      customProperties: json['customProperties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['customProperties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommandRequestToJson(CommandRequest instance) =>
    <String, dynamic>{
      'price': instance.price,
      'specificationOptionIds': instance.specificationOptionIds,
      'manufacturerIds': instance.manufacturerIds,
      'orderBy': instance.orderBy,
      'viewMode': instance.viewMode,
      'pageIndex': instance.pageIndex,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
      'firstItem': instance.firstItem,
      'lastItem': instance.lastItem,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
      'customProperties': instance.customProperties,
    };

ModelRequest _$ModelRequestFromJson(Map<String, dynamic> json) => ModelRequest(
      q: json['q'] as String?,
      cid: (json['cid'] as num?)?.toInt() ?? 0,
      isc: json['isc'] as bool? ?? false,
      mid: (json['mid'] as num?)?.toInt() ?? 0,
      vid: (json['vid'] as num?)?.toInt() ?? 0,
      sid: json['sid'] as bool? ?? false,
      advs: json['advs'] as bool? ?? false,
      asv: json['asv'] as bool? ?? false,
      catalogProductsModel: json['catalogProductsModel'] == null
          ? null
          : CatalogProductsModelResponse.fromJson(
              json['catalogProductsModel'] as Map<String, dynamic>),
      availableCategories: (json['availableCategories'] as List<dynamic>?)
          ?.map((e) =>
              AvailableViewModeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableManufacturers: (json['availableManufacturers'] as List<dynamic>?)
          ?.map((e) =>
              AvailableViewModeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableVendors: (json['availableVendors'] as List<dynamic>?)
          ?.map((e) =>
              AvailableViewModeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      customProperties: json['customProperties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['customProperties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModelRequestToJson(ModelRequest instance) =>
    <String, dynamic>{
      'q': instance.q,
      'cid': instance.cid,
      'isc': instance.isc,
      'mid': instance.mid,
      'vid': instance.vid,
      'sid': instance.sid,
      'advs': instance.advs,
      'asv': instance.asv,
      'catalogProductsModel': instance.catalogProductsModel,
      'availableCategories': instance.availableCategories,
      'availableManufacturers': instance.availableManufacturers,
      'availableVendors': instance.availableVendors,
      'customProperties': instance.customProperties,
    };
