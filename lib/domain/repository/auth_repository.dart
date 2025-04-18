import 'package:bloom/core/resources/dio_handled_exception.dart';
import 'package:bloom/domain/entity/register/register_request_entity.dart';
import 'package:bloom/domain/entity/register/register_response_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<HandledException, RegisterResponseEntity>> register(RegisterRequestEntity request);

// Future<Either<Failure, AuthResponseEntity>> authenticate(AuthRequestEntity request);
}
