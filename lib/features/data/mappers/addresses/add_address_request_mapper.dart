import 'package:amamini_client/features/data/mappers/addresses/address_mapper.dart';
import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/requests/add_address_request/add_address_model_request.dart';
import 'package:amamini_client/features/data/model/requests/add_address_request/add_address_request.dart';
import 'package:amamini_client/features/domain/entity/address/add_address_entity.dart';
import 'package:amamini_client/features/domain/entity/address/add_address_model_entity.dart';

extension AddAddressRequestMapper on AddAddressEntity {
  AddAddressRequest toRequest() {
    return AddAddressRequest(
      model?.toRequest(),
      form?.toRequest(),
    );
  }
}

extension AddAddressModeRequestMapper on AddAddressModelEntity {
  AddAddressModelRequest toRequest() {
    return AddAddressModelRequest(
      address?.toRequest(),
      customProperties?.toRequest(),
    );
  }
}

extension AddAddressModelToEntityMapper on AddAddressModelRequest {
  AddAddressModelEntity toEntity() {
    return AddAddressModelEntity(
      address: address?.toEntity(),
      customProperties: customProperties?.toEntity(),
    );
  }
}
