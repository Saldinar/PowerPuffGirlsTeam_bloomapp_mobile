import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/shopping_cart/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_address_model_request.g.dart';

@JsonSerializable()
class AddAddressModelRequest {
  @JsonKey(name: 'address')
  final AddressResponse? address;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  AddAddressModelRequest(this.address, this.customProperties);

  factory AddAddressModelRequest.fromJson(Map<String, dynamic> json) =>
      _$AddAddressModelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddAddressModelRequestToJson(this);
}
