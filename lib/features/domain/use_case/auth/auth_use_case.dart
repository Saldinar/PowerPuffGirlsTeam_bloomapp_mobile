import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/auth/auth_entity.dart';
import 'package:amamini_client/features/domain/entity/auth/auth_request_entity.dart';
import 'package:amamini_client/features/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthUseCase {
  final AuthRepository _authRepository;

  AuthUseCase({required AuthRepository authRepository})
      : _authRepository = authRepository;

  Future<Either<Failure, AuthEntity>> authCustomer(
    AuthRequestEntity request,
  ) async {
    return await _authRepository.authCustomer(request);
  }
}
