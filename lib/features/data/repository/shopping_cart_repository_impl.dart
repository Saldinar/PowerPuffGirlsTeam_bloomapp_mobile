import 'dart:io';
import 'package:amamini_client/core/resources/dio_exception_handler.dart';
import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/data/data_source/remote/cart/shopping_cart_data_source.dart';
import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/shopping_cart/shopping_cart_mapper.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/shopping_cart_entity.dart';
import 'package:amamini_client/features/domain/repository/shopping_cart_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ShoppingCartRepository)
class ShoppingCartRepositoryImpl implements ShoppingCartRepository {
  final ShoppingCartDataSource _dataSource;
  ShoppingCartRepositoryImpl({required ShoppingCartDataSource dataSource})
      : _dataSource = dataSource;

  @override
  Future<Either<Failure, ShoppingCartEntity>> getShoppingCart() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.getShoppingCart();
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
  Future<Either<Failure, ShoppingCartEntity>> applyDiscountCoupon(
    String discountCouponCode,
    CustomPropertiesEntity requestBody,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.applyDiscountCoupon(
        discountCouponCode,
        requestBody.toRequest(),
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
  Future<Either<Failure, ShoppingCartEntity>> applyGiftCard(
    String giftCardCouponCode,
    CustomPropertiesEntity requestBody,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }

    try {
      final httpResponse = await _dataSource.applyGiftCardCoupon(
        giftCardCouponCode,
        requestBody.toRequest(),
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
  Future<Either<Failure, ShoppingCartEntity>> removeDiscountCoupon(
    CustomPropertiesEntity requestBody,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse =
          await _dataSource.removeDiscountCoupon(requestBody.toRequest());

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
  Future<Either<Failure, ShoppingCartEntity>> removeGiftCardCoupon(
    CustomPropertiesEntity requestBody,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse =
          await _dataSource.removeGiftCardCoupon(requestBody.toRequest());
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
  Future<Either<Failure, void>> addProductToCartFormCatalog(
    AddProductFromCatalogEntity params,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.addProductToCartFromCatalog(
        params.productId,
        params.shoppingCartType,
        params.quantity,
      );
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
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
  Future<Either<Failure, void>> addProductToCartFromDetails(
    AddProductFromDetailsEntity params,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.addProductToCartFromDetails(
        params.productId,
        params.shoppingCartType,
        params.requestBody.toRequest(),
      );
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
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
