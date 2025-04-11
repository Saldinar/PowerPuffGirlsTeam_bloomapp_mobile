import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/customer/password_entity/password_entity.dart';
import 'package:amamini_client/features/domain/repository/password_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class PasswordUseCase {
  PasswordUseCase({required PasswordRepository passwordRepository})
      : _passwordRepository = passwordRepository;

  final PasswordRepository _passwordRepository;
  Future<Either<Failure, void>> changePassword(PasswordEntity request) {
    return _passwordRepository.changePassword(
      request,
    );
  }
}
