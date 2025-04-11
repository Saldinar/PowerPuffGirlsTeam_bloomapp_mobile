import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/responses/product/review_overview_model.dart';
import 'package:amamini_client/features/domain/entity/product/review_overview_model.dart';

extension ReviewOverviewModelMapper on ReviewOverviewModelResponse {
  ReviewOverviewModelEntity toEntity() {
    return ReviewOverviewModelEntity(
      productId: productId,
      ratingSum: ratingSum,
      totalReviews: totalReviews,
      allowCustomerReviews: allowCustomerReviews,
      canAddNewReview: canAddNewReview,
      customProperties: customProperties?.toEntity(),
    );
  }
}
