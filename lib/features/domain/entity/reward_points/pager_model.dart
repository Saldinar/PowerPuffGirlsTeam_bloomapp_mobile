import 'package:amamini_client/features/domain/entity/reward_points/route_values.dart';
import 'package:equatable/equatable.dart';

class PagerModelEntity extends Equatable {
  final int? currentPage;
  final int? individualPagesDisplayedCount;
  final int? pageIndex;
  final int? pageSize;
  final bool? showFirst;
  final bool? showIndividualPages;
  final bool? showLast;
  final bool? showNext;
  final bool? showPagerItems;
  final bool? showPrevious;
  final bool? showTotalSummary;
  final int? totalPages;
  final int? totalRecords;
  final String? routeActionName;
  final bool? useRouteLinks;
  final RouteValuesEntity? routeValues;

  const PagerModelEntity({
    required this.currentPage,
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

  PagerModelEntity copyWith({
    int? currentPage,
    int? individualPagesDisplayedCount,
    int? pageIndex,
    int? pageSize,
    bool? showFirst,
    bool? showIndividualPages,
    bool? showLast,
    bool? showNext,
    bool? showPagerItems,
    bool? showPrevious,
    bool? showTotalSummary,
    int? totalPages,
    int? totalRecords,
    String? routeActionName,
    bool? useRouteLinks,
    RouteValuesEntity? routeValues,
  }) {
    return PagerModelEntity(
      currentPage: currentPage ?? this.currentPage,
      individualPagesDisplayedCount:
          individualPagesDisplayedCount ?? this.individualPagesDisplayedCount,
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      showFirst: showFirst ?? this.showFirst,
      showIndividualPages: showIndividualPages ?? this.showIndividualPages,
      showLast: showLast ?? this.showLast,
      showNext: showNext ?? this.showNext,
      showPagerItems: showPagerItems ?? this.showPagerItems,
      showPrevious: showPrevious ?? this.showPrevious,
      showTotalSummary: showTotalSummary ?? this.showTotalSummary,
      totalPages: totalPages ?? this.totalPages,
      totalRecords: totalRecords ?? this.totalRecords,
      routeActionName: routeActionName ?? this.routeActionName,
      useRouteLinks: useRouteLinks ?? this.useRouteLinks,
      routeValues: routeValues ?? this.routeValues,
    );
  }

  @override
  List<Object?> get props {
    return [
      currentPage,
      individualPagesDisplayedCount,
      pageIndex,
      pageSize,
      showFirst,
      showIndividualPages,
      showLast,
      showNext,
      showPagerItems,
      showPrevious,
      showTotalSummary,
      totalPages,
      totalRecords,
      routeActionName,
      useRouteLinks,
      routeValues,
    ];
  }
}
