import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/address/add_address_entity.dart';
import 'package:amamini_client/features/domain/entity/address/add_address_model_entity.dart';
import 'package:amamini_client/features/domain/entity/address/customer_addresses_entity.dart';
import 'package:amamini_client/features/domain/repository/address_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class AddressUseCase {
  final AddressRepository _repository;

  AddressUseCase({required AddressRepository repository})
      : _repository = repository;

  Future<Either<Failure, CustomerAddressesEntity>>
      getCustomerAddresses() async {
    return await _repository.getCustomerAddresses();
  }

  Future<Either<Failure, void>> deleteAddress(int addressId) async {
    return await _repository.deleteAddress(addressId);
  }

  Future<Either<Failure, void>> addAddressEntity(AddAddressEntity request) {
    return _repository.addAddress(request);
  }

  Future<Either<Failure, AddAddressModelEntity>> getAddressDetails(
    int addressId,
  ) async {
    return await _repository.getAddressDetails(addressId);
  }

  Future<Either<Failure, void>> updateAddressDetails(AddAddressEntity request) {
    return _repository.updateAddressDetails(request);
  }
}
