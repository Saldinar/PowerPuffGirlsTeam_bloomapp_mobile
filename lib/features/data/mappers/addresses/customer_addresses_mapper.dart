import 'package:amamini_client/features/data/mappers/addresses/address_mapper.dart';
import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/responses/customer_addresses/customer_addresses_response.dart';
import 'package:amamini_client/features/domain/entity/address/customer_addresses_entity.dart';

extension CustomerAddressesMapper on CustomerAddressesResponse {
  CustomerAddressesEntity toEntity() {
    return CustomerAddressesEntity(
      addresses: addresses?.map((address) => address.toEntity()).toList(),
      customProperties: customProperties?.toEntity(),
    );
  }
}
