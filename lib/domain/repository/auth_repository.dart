import 'package:bloom/core/resources/dio_failure.dart';
import 'package:bloom/domain/entity/auth/auth_entity.dart';
import 'package:bloom/domain/entity/auth/auth_request_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthEntity>> authCustomer(AuthRequestEntity request);
}
