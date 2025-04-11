import 'package:amamini_client/features/data/model/responses/reward_points/route_values.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pager_model.g.dart';

@JsonSerializable()
class PagerModelResponse {
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'individual_pages_displayed_count')
  final int? individualPagesDisplayedCount;
  @JsonKey(name: 'page_index')
  final int? pageIndex;
  @JsonKey(name: 'page_size')
  final int? pageSize;
  @JsonKey(name: 'show_first')
  final bool? showFirst;
  @JsonKey(name: 'show_individual_pages')
  final bool? showIndividualPages;
  @JsonKey(name: 'show_last')
  final bool? showLast;
  @JsonKey(name: 'show_next')
  final bool? showNext;
  @JsonKey(name: 'show_pager_items')
  final bool? showPagerItems;
  @JsonKey(name: 'show_previous')
  final bool? showPrevious;
  @JsonKey(name: 'show_total_summary')
  final bool? showTotalSummary;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_records')
  final int? totalRecords;
  @JsonKey(name: 'route_action_name')
  final String? routeActionName;
  @JsonKey(name: 'use_route_links')
  final bool? useRouteLinks;
  @JsonKey(name: 'route_values')
  final RouteValuesResponse? routeValues;

  const PagerModelResponse({
    this.currentPage,
    this.individualPagesDisplayedCount,
    this.pageIndex,
    this.pageSize,
    this.showFirst,
    this.showIndividualPages,
    this.showLast,
    this.showNext,
    this.showPagerItems,
    this.showPrevious,
    this.showTotalSummary,
    this.totalPages,
    this.totalRecords,
    this.routeActionName,
    this.useRouteLinks,
    this.routeValues,
  });

  factory PagerModelResponse.fromJson(Map<String, dynamic> json) {
    return _$PagerModelResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PagerModelResponseToJson(this);
}
