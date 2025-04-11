import 'dart:io';
import 'package:amamini_client/core/resources/dio_exception_handler.dart';
import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/data/data_source/remote/product_reviews/product_reviews_data_source.dart';
import 'package:amamini_client/features/data/mappers/product_reviews/product_reviews_mapper.dart';
import 'package:amamini_client/features/domain/entity/product_reviews/product_reviews_entity.dart';
import 'package:amamini_client/features/domain/repository/product_reviews_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ProductReviewsRepository)
class ProductReviewsRepositoryImpl implements ProductReviewsRepository {
  final ProductReviewsDataSource _dataSource;

  ProductReviewsRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, ProductReviewsEntity>> getProductReviews() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.getProductReviews();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data.toEntity());
      } else {
        return Left(
          ErrorHandler.handle(
            DioException(
              response: httpResponse.response,
              type: DioExceptionType.badResponse,
              requestOptions: httpResponse.response.requestOptions,
            ),
          ).failure,
        );
      }
    } on DioException catch (error) {
      final errorHandler = ErrorHandler.handle(error);
      return Left(errorHandler.failure);
    }
  }
}
