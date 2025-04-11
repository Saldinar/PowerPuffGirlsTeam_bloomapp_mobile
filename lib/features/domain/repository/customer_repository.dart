import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/change_password/change_password_entity.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/domain/entity/registration_model/registration_model_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CustomerRepository {
  Future<Either<Failure, void>> logOut();
  Future<Either<Failure, CustomerInfoEntity>> getCustomerInfo();
  Future<Either<Failure, CustomerInfoEntity>> registerCustomer(
    RegistrationModelEntity request,
  );
  Future<Either<Failure, void>> updateCustomerInfo(
    RegistrationModelEntity request,
  );
  Future<Either<Failure, void>> changePassword(ChangePasswordEntity request);
}
