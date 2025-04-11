import 'package:amamini_client/features/domain/entity/product_entity/custom_properties.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_overview_model.freezed.dart';

@freezed
class ReviewOverviewModelEntity with _$ReviewOverviewModelEntity {
  factory ReviewOverviewModelEntity({
    required int? productId,
    required int? ratingSum,
    required int? totalReviews,
    required bool? allowCustomerReviews,
    required bool? canAddNewReview,
    required CustomPropertiesEntity? customProperties,
  }) = _ReviewOverviewModelEntity;
}
