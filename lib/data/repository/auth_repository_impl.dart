import 'dart:io';
import 'package:bloom/core/resources/dio_exception_handler.dart';
import 'package:bloom/core/resources/dio_failure.dart';
import 'package:bloom/data/data_source/remote/auth/auth_data_source.dart';
import 'package:bloom/data/mappers/auth/auth_mapper.dart';
import 'package:bloom/data/model/requests/register_request/register_request.dart';
import 'package:bloom/data/model/responses/register_response/register_response.dart';
import 'package:bloom/domain/entity/auth/auth_entity.dart';
import 'package:bloom/domain/entity/auth/auth_request_entity.dart';
import 'package:bloom/domain/repository/auth_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _dataSource;
  AuthRepositoryImpl({required AuthDataSource dataSource})
      : _dataSource = dataSource;

  @override
  Future<Either<Failure, AuthEntity>> authCustomer(
    AuthRequestEntity request,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == [ConnectivityResult.none]) {
      return Left(DataSource.noInternetConnection.getFailure());
    }
    try {
      final httpResponse = await _dataSource
          .registerUser(request.toRequest() as RegisterRequest);
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

extension RegisterResponseMapper on RegisterResponse {
  AuthEntity toEntity() {
    return AuthEntity(
      userName: userName,
      customerId: customerId,
      token: token ?? '',
    );
  }
}
