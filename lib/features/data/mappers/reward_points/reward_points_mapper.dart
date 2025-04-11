import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/responses/reward_points/pager_model.dart';
import 'package:amamini_client/features/data/model/responses/reward_points/reward_point.dart';
import 'package:amamini_client/features/data/model/responses/reward_points/reward_points_response.dart';
import 'package:amamini_client/features/data/model/responses/reward_points/route_values.dart';
import 'package:amamini_client/features/domain/entity/reward_points/pager_model.dart';
import 'package:amamini_client/features/domain/entity/reward_points/reward_point.dart';
import 'package:amamini_client/features/domain/entity/reward_points/reward_points_entity.dart';
import 'package:amamini_client/features/domain/entity/reward_points/route_values.dart';

extension RewardPointsMapper on RewardPointsResponse {
  RewardPointsEntity toEntity() {
    return RewardPointsEntity(
      rewardPoints: rewardPoints?.map((item) => item.toEntity()).toList(),
      pagerModel: pagerModel?.toEntity(),
      rewardPointsBalance: rewardPointsBalance,
      rewardPointsAmount: rewardPointsAmount,
      minimumRewardPointsBalance: minimumRewardPointsBalance,
      minimumRewardPointsAmount: minimumRewardPointsAmount,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension RewardPointItemMapper on RewardPointItemResponse {
  RewardPointItemEntity toEntity() {
    return RewardPointItemEntity(
      points: points,
      pointsBalance: pointsBalance,
      message: message,
      createdOn: createdOn,
      endDate: endDate,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension PagerModelMapper on PagerModelResponse {
  PagerModelEntity toEntity() {
    return PagerModelEntity(
      currentPage: currentPage,
      individualPagesDisplayedCount: individualPagesDisplayedCount,
      pageIndex: pageIndex,
      pageSize: pageSize,
      showFirst: showFirst,
      showIndividualPages: showIndividualPages,
      showLast: showLast,
      showNext: showNext,
      showPagerItems: showPagerItems,
      showPrevious: showPrevious,
      showTotalSummary: showTotalSummary,
      totalPages: totalPages,
      totalRecords: totalRecords,
      routeActionName: routeActionName,
      useRouteLinks: useRouteLinks,
      routeValues: routeValues?.toEntity(),
    );
  }
}

extension RouteValuesMapper on RouteValuesResponse {
  RouteValuesEntity toEntity() {
    return RouteValuesEntity(pageNumber: pageNumber);
  }
}
