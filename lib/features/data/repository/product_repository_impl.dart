import 'dart:io';
import 'package:amamini_client/core/resources/dio_exception_handler.dart';
import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/data/data_source/remote/products/product_data_source.dart';
import 'package:amamini_client/features/data/mappers/catalog_products/catalog_product_mapper.dart';
import 'package:amamini_client/features/data/mappers/catalog_request_body/manufacturer_request_body_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/product_mappers/product_mapper.dart';
import 'package:amamini_client/features/data/mappers/product_details/product_details_mapper.dart';
import 'package:amamini_client/features/data/model/requests/search_products_request/search_products_request.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_products_entity/manufacturer_products_entity.dart';
import 'package:amamini_client/features/domain/entity/product/product_entity.dart';
import 'package:amamini_client/features/domain/entity/product_details/product_details_entity.dart';
import 'package:amamini_client/features/domain/repository/products_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ProductsRepository)
class ProductRepositoryImpl implements ProductsRepository {
  ProductRepositoryImpl({required ProductDataSource dataSource})
      : _dataSource = dataSource;

  final ProductDataSource _dataSource;

  @override
  Future<Either<Failure, List<ProductEntity>>> getFeaturedProducts() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.getHomePageProducts();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(
          httpResponse.data.map((product) => product.toEntity()).toList(),
        );
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

  @override
  Future<Either<Failure, ProductDetailsEntity>> getProductDetails(
    int productId,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.getProductDetails(productId);
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

  @override
  Future<Either<Failure, CatalogProductEntity>> getProductsByManufacturerId({
    required int manufacturerId,
    required CatalogParams params,
  }) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.getProductsByManufacturerId(
        manufacturerId,
        params.toRequest(),
      );
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
    } on DioException catch (e) {
      final errorHandler = ErrorHandler.handle(e);
      return Left(errorHandler.failure);
    }
  }

  @override
  Future<Either<Failure, CatalogProductEntity>> getProductsByCategoryId({
    required int categoryId,
    required CatalogParams params,
  }) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.getProductsByCategoryId(
        categoryId,
        params.toRequest(),
      );
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
    } on DioException catch (e) {
      final errorHandler = ErrorHandler.handle(e);
      return Left(errorHandler.failure);
    }
  }

  @override
  Future<Either<Failure, CatalogProductEntity>> getProductsByTagId({
    required int tagId,
    required CatalogParams params,
  }) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse =
          await _dataSource.getProductsByTagId(tagId, params.toRequest());
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
    } on DioException catch (e) {
      final errorHandler = ErrorHandler.handle(e);
      return Left(errorHandler.failure);
    }
  }

  @override
  Future<Either<Failure, CatalogProductEntity>> searchProducts(
    SearchProductsRequest params,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.searchProducts(params);
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
    } on DioException catch (e) {
      final errorHandler = ErrorHandler.handle(e);
      return Left(errorHandler.failure);
    }
  }
}
