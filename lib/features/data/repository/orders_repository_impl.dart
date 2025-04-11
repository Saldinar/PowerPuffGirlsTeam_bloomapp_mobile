import 'dart:io';

import 'package:amamini_client/core/resources/dio_exception_handler.dart';
import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/data/data_source/remote/orders/orders_data_source.dart';
import 'package:amamini_client/features/data/mappers/order/orders_mapper.dart';
import 'package:amamini_client/features/domain/entity/orders_entity/orders_entity.dart';
import 'package:amamini_client/features/domain/repository/orders_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: OrdersRepository)
class OrdersRepositoryImpl implements OrdersRepository {
  OrdersRepositoryImpl({required OrdersDataSource dataSource})
      : _dataSource = dataSource;

  final OrdersDataSource _dataSource;
  @override
  Future<Either<Failure, OrdersEntity>> getOrders() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.getOrders();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data.toEntity());
      } else {
        final error = ErrorHandler.handle(
          DioException(
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        ).failure;
        return Left(error);
      }
    } on DioException catch (error) {
      final errorHandler = ErrorHandler.handle(error);
      return Left(errorHandler.failure);
    }
  }
}
