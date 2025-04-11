import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product_reviews/additional_product_review_list.dart';
import 'package:equatable/equatable.dart';

class ProductReviewItemEntity extends Equatable {
  final int? productId;
  final String? productName;
  final String? productSeName;
  final String? title;
  final String? reviewText;
  final String? replyText;
  final int? rating;
  final String? writtenOnStr;
  final String? approvalStatus;
  final List<AdditionalProductReviewListEntity>? additionalProductReviewList;
  final CustomPropertiesEntity? customProperties;

  const ProductReviewItemEntity({
    this.productId,
    this.productName,
    this.productSeName,
    this.title,
    this.reviewText,
    this.replyText,
    this.rating,
    this.writtenOnStr,
    this.approvalStatus,
    this.additionalProductReviewList,
    this.customProperties,
  });

  ProductReviewItemEntity copyWith({
    int? productId,
    String? productName,
    String? productSeName,
    String? title,
    String? reviewText,
    String? replyText,
    int? rating,
    String? writtenOnStr,
    String? approvalStatus,
    List<AdditionalProductReviewListEntity>? additionalProductReviewList,
    CustomPropertiesEntity? customProperties,
  }) {
    return ProductReviewItemEntity(
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      productSeName: productSeName ?? this.productSeName,
      title: title ?? this.title,
      reviewText: reviewText ?? this.reviewText,
      replyText: replyText ?? this.replyText,
      rating: rating ?? this.rating,
      writtenOnStr: writtenOnStr ?? this.writtenOnStr,
      approvalStatus: approvalStatus ?? this.approvalStatus,
      additionalProductReviewList:
          additionalProductReviewList ?? this.additionalProductReviewList,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      productId,
      productName,
      productSeName,
      title,
      reviewText,
      replyText,
      rating,
      writtenOnStr,
      approvalStatus,
      additionalProductReviewList,
      customProperties,
    ];
  }
}
