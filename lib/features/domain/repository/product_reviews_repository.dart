import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/product_reviews/product_reviews_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProductReviewsRepository {
  Future<Either<Failure, ProductReviewsEntity>> getProductReviews();
}
