import 'dart:io';

import 'package:bloom/core/resources/dio_exception_handler.dart';
import 'package:bloom/core/resources/dio_handled_exception.dart';
import 'package:bloom/data/data_source/remote/auth/auth_data_source.dart';
import 'package:bloom/data/mappers/auth/auth_mapper.dart';
import 'package:bloom/domain/entity/register/register_request_entity.dart';
import 'package:bloom/domain/entity/register/register_response_entity.dart';
import 'package:bloom/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this._service);

  final AuthService _service;

  @override
  Future<Either<HandledException, RegisterResponseEntity>> register(RegisterRequestEntity request) async {
    try {
      final httpResponse = await _service.register(request.toRequest());

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
