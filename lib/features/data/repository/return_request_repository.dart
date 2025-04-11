import 'dart:io';

import 'package:amamini_client/core/resources/dio_exception_handler.dart';
import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/data/data_source/remote/return_requests/return_requests_data_source.dart';
import 'package:amamini_client/features/data/mappers/return_request/return_request_mapper.dart';
import 'package:amamini_client/features/domain/entity/return_request/return_request_entity.dart';
import 'package:amamini_client/features/domain/repository/return_request_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ReturnRequestRepository)
class ReturnRequestRepositoryImpl implements ReturnRequestRepository {
  final ReturnRequestsDataSource _dataSource;

  ReturnRequestRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, ReturnRequestEntity>> getReturnRequests() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource.getReturnRequests();
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
