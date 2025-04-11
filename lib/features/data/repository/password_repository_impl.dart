import 'dart:io';
import 'package:amamini_client/core/resources/dio_exception_handler.dart';
import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/data/data_source/remote/password/password_data_source.dart';
import 'package:amamini_client/features/data/mappers/password/password_mapper.dart';
import 'package:amamini_client/features/domain/entity/customer/password_entity/password_entity.dart';
import 'package:amamini_client/features/domain/repository/password_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: PasswordRepository)
class PasswordRepositoryImpl implements PasswordRepository {
  PasswordRepositoryImpl({required PasswordDataSource dataSource})
      : _dataSource = dataSource;

  final PasswordDataSource _dataSource;
  @override
  Future<Either<Failure, void>> changePassword(PasswordEntity request) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse =
          await _dataSource.changePassword(request.toRequest());
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return Right(httpResponse.data);
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
