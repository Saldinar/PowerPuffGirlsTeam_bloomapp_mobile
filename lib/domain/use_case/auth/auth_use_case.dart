import 'package:bloom/core/resources/dio_handled_exception.dart';
import 'package:bloom/domain/entity/register/register_request_entity.dart';
import 'package:bloom/domain/entity/register/register_response_entity.dart';
import 'package:bloom/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUseCase {
  const RegisterUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<Either<HandledException, RegisterResponseEntity>> register(
    RegisterRequestEntity request,
  ) async {
    return await _authRepository.register(request);
  }
}
