import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/customer/password_entity/password_entity.dart';
import 'package:dartz/dartz.dart';

abstract class PasswordRepository {
  Future<Either<Failure, void>> changePassword(PasswordEntity request);
}
