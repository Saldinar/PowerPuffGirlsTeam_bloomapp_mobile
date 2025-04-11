// ignore_for_file: sort_constructors_first
import 'dart:io';
import 'package:amamini_client/core/resources/dio_exception_handler.dart';
import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/data/data_source/remote/category/category_data_source.dart';
import 'package:amamini_client/features/data/mappers/category/category_mapper.dart';
import 'package:amamini_client/features/domain/entity/category/category_entity.dart';
import 'package:amamini_client/features/domain/repository/category_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryDataSource _dataSource;
  CategoryRepositoryImpl({required CategoryDataSource dataSource})
      : _dataSource = dataSource;
  @override
  Future<Either<Failure, List<CategoryEntity>>> getHomePageCategories() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.getHomePageCategories();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(
          httpResponse.data.map((category) => category.toEntity()).toList(),
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
    } on DioException catch (e) {
      final errorHandler = ErrorHandler.handle(e);
      return Left(errorHandler.failure);
    }
  }

  @override
  Future<Either<Failure, List<CategoryEntity>>> getCatalogRoot() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.getCatalogRoot(true);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(
          httpResponse.data.map((category) => category.toEntity()).toList(),
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
    } on DioException catch (e) {
      final errorHandler = ErrorHandler.handle(e);
      return Left(errorHandler.failure);
    }
  }

  @override
  Future<Either<Failure, List<CategoryEntity>>> getSubCategories(
    int categoryId,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.getSubCategories(categoryId);
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data.map((item) => item.toEntity()).toList());
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
