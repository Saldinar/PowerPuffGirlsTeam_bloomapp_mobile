// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class ProductReviewOverviewEntity extends Equatable {
  final int? productId;
  final int? ratingSum;
  final int? totalReviews;
  final bool? allowCustomerReviews;
  final bool? canAddNewReview;
  final CustomPropertiesEntity? customProperties;

  const ProductReviewOverviewEntity({
    required this.productId,
    required this.ratingSum,
    required this.totalReviews,
    required this.allowCustomerReviews,
    required this.canAddNewReview,
    required this.customProperties,
  });

  ProductReviewOverviewEntity copyWith({
    int? productId,
    int? ratingSum,
    int? totalReviews,
    bool? allowCustomerReviews,
    bool? canAddNewReview,
    CustomPropertiesEntity? customProperties,
  }) {
    return ProductReviewOverviewEntity(
      productId: productId ?? this.productId,
      ratingSum: ratingSum ?? this.ratingSum,
      totalReviews: totalReviews ?? this.totalReviews,
      allowCustomerReviews: allowCustomerReviews ?? this.allowCustomerReviews,
      canAddNewReview: canAddNewReview ?? this.canAddNewReview,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      productId,
      ratingSum,
      totalReviews,
      allowCustomerReviews,
      canAddNewReview,
      customProperties,
    ];
  }
}
