import 'package:amamini_client/features/data/model/requests/add_address_request/add_address_model_request.dart';
import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_address_request.g.dart';

@JsonSerializable()
class AddAddressRequest {
  @JsonKey(name: 'model')
  final AddAddressModelRequest? model;
  @JsonKey(name: 'form')
  final CustomPropertiesResponse? form;

  AddAddressRequest(this.model, this.form);

  factory AddAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$AddAddressRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddAddressRequestToJson(this);
}
