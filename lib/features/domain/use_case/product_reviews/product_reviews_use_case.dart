import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/product_reviews/product_reviews_entity.dart';
import 'package:amamini_client/features/domain/repository/product_reviews_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProductReviewsUseCase {
  final ProductReviewsRepository _repository;

  ProductReviewsUseCase(this._repository);

  Future<Either<Failure, ProductReviewsEntity>> getProductReviews() async {
    return _repository.getProductReviews();
  }
}
