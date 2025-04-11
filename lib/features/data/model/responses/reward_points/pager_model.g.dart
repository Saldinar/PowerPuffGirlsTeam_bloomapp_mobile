// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pager_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagerModelResponse _$PagerModelResponseFromJson(Map<String, dynamic> json) =>
    PagerModelResponse(
      currentPage: (json['current_page'] as num?)?.toInt(),
      individualPagesDisplayedCount:
          (json['individual_pages_displayed_count'] as num?)?.toInt(),
      pageIndex: (json['page_index'] as num?)?.toInt(),
      pageSize: (json['page_size'] as num?)?.toInt(),
      showFirst: json['show_first'] as bool?,
      showIndividualPages: json['show_individual_pages'] as bool?,
      showLast: json['show_last'] as bool?,
      showNext: json['show_next'] as bool?,
      showPagerItems: json['show_pager_items'] as bool?,
      showPrevious: json['show_previous'] as bool?,
      showTotalSummary: json['show_total_summary'] as bool?,
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalRecords: (json['total_records'] as num?)?.toInt(),
      routeActionName: json['route_action_name'] as String?,
      useRouteLinks: json['use_route_links'] as bool?,
      routeValues: json['route_values'] == null
          ? null
          : RouteValuesResponse.fromJson(
              json['route_values'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PagerModelResponseToJson(PagerModelResponse instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'individual_pages_displayed_count':
          instance.individualPagesDisplayedCount,
      'page_index': instance.pageIndex,
      'page_size': instance.pageSize,
      'show_first': instance.showFirst,
      'show_individual_pages': instance.showIndividualPages,
      'show_last': instance.showLast,
      'show_next': instance.showNext,
      'show_pager_items': instance.showPagerItems,
      'show_previous': instance.showPrevious,
      'show_total_summary': instance.showTotalSummary,
      'total_pages': instance.totalPages,
      'total_records': instance.totalRecords,
      'route_action_name': instance.routeActionName,
      'use_route_links': instance.useRouteLinks,
      'route_values': instance.routeValues,
    };
