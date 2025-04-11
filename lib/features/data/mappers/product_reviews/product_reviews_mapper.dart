import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/reward_points/reward_points_mapper.dart';
import 'package:amamini_client/features/data/model/responses/product_reviews/additional_product_review_list.dart';
import 'package:amamini_client/features/data/model/responses/product_reviews/product_review.dart';
import 'package:amamini_client/features/data/model/responses/product_reviews/product_reviews_response.dart';
import 'package:amamini_client/features/domain/entity/product_reviews/additional_product_review_list.dart';
import 'package:amamini_client/features/domain/entity/product_reviews/product_review.dart';
import 'package:amamini_client/features/domain/entity/product_reviews/product_reviews_entity.dart';

extension ProductReviewsMapper on ProductReviewsResponse {
  ProductReviewsEntity toEntity() {
    return ProductReviewsEntity(
      productReviews: productReviews?.map((item) => item.toEntity()).toList(),
      pagerModel: pagerModel?.toEntity(),
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension ProductReviewItemMapper on ProductReviewItemResponse {
  ProductReviewItemEntity toEntity() {
    return ProductReviewItemEntity(
      productId: productId,
      productName: productName,
      productSeName: productSeName,
      title: title,
      reviewText: reviewText,
      replyText: replyText,
      rating: rating,
      writtenOnStr: writtenOnStr,
      approvalStatus: approvalStatus,
      additionalProductReviewList:
          additionalProductReviewList?.map((item) => item.toEntity()).toList(),
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension AdditionalProductReviewMapper on AdditionalProductReviewListResponse {
  AdditionalProductReviewListEntity toEntity() {
    return AdditionalProductReviewListEntity(
      productReviewId: productReviewId,
      reviewTypeId: reviewTypeId,
      rating: rating,
      name: name,
      visibleToAllCustomers: visibleToAllCustomers,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}
