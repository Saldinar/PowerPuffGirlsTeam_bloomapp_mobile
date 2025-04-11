import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/address/add_address_entity.dart';
import 'package:amamini_client/features/domain/entity/address/add_address_model_entity.dart';
import 'package:amamini_client/features/domain/entity/address/customer_addresses_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AddressRepository {
  Future<Either<Failure, CustomerAddressesEntity>> getCustomerAddresses();
  Future<Either<Failure, void>> deleteAddress(int addressId);
  Future<Either<Failure, void>> addAddress(AddAddressEntity request);
  Future<Either<Failure, AddAddressModelEntity>> getAddressDetails(
    int addressId,
  );
  Future<Either<Failure, void>> updateAddressDetails(AddAddressEntity request);
}
