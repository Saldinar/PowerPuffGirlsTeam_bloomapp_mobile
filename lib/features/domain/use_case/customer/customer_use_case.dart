import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/change_password/change_password_entity.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/domain/entity/registration_model/registration_model_entity.dart';
import 'package:amamini_client/features/domain/repository/customer_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class CustomerUseCase {
  final CustomerRepository _repository;
  CustomerUseCase({required CustomerRepository repository})
      : _repository = repository;

  Future<Either<Failure, void>> logOut() async {
    return await _repository.logOut();
  }

  Future<Either<Failure, CustomerInfoEntity>> getCustomerInfo() async {
    return await _repository.getCustomerInfo();
  }

  Future<Either<Failure, CustomerInfoEntity>> registerCustomer(
    RegistrationModelEntity request,
  ) async {
    return await _repository.registerCustomer(request);
  }

  Future<Either<Failure, void>> updateCustomerInfo(
    RegistrationModelEntity request,
  ) async {
    return await _repository.updateCustomerInfo(request);
  }

  Future<Either<Failure, void>> changePassword(
    ChangePasswordEntity request,
  ) async {
    return await _repository.changePassword(request);
  }
}
