import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product_reviews/product_review.dart';
import 'package:amamini_client/features/domain/entity/reward_points/pager_model.dart';
import 'package:equatable/equatable.dart';

class ProductReviewsEntity extends Equatable {
  final List<ProductReviewItemEntity>? productReviews;
  final PagerModelEntity? pagerModel;
  final CustomPropertiesEntity? customProperties;

  const ProductReviewsEntity({
    required this.productReviews,
    required this.pagerModel,
    required this.customProperties,
  });

  @override
  List<Object?> get props => [
        productReviews,
        pagerModel,
        customProperties,
      ];
}
