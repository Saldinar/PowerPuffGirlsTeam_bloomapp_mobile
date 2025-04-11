import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/auth/auth_entity.dart';
import 'package:amamini_client/features/domain/entity/auth/auth_request_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthEntity>> authCustomer(AuthRequestEntity request);
}
