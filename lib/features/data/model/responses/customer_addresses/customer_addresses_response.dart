import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_addresses_response.g.dart';

@JsonSerializable()
class CustomerAddressesResponse {
  @JsonKey(name: 'addresses')
  final List<AddressResponse>? addresses;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;
  CustomerAddressesResponse({this.addresses, this.customProperties});

  factory CustomerAddressesResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerAddressesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerAddressesResponseToJson(this);
}
