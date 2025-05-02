import 'dart:io';

import 'package:bloom/core/resources/dio_exception_handler.dart';
import 'package:bloom/core/resources/dio_handled_exception.dart';
import 'package:bloom/data/data_source/remote/cycle_data/cycle_data_source.dart';
import 'package:bloom/data/mappers/user/user_mapper.dart';
import 'package:bloom/domain/entity/user/user_request_entity.dart';
import 'package:bloom/domain/entity/user/user_response_entity.dart';
import 'package:bloom/domain/repository/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this._service);

  final UserService _service;

  @override
  Future<Either<HandledException, UserRequestEntity>> request(
      UserRequestEntity request) async {
    try {
      final httpResponse = await _service.getCurrentUser(
        'Bearer token',
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
    } on DioException catch (error) {
      final errorHandler = ErrorHandler.handle(error);
      return Left(errorHandler.failure);
    }
  }
}
