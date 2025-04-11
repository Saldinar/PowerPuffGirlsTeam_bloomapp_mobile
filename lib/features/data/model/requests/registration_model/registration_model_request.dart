import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/customer_info/customer_info_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'registration_model_request.g.dart';

@JsonSerializable()
class RegistrationModelRequest {
  @JsonKey(name: 'model')
  final CustomerInfoResponse? model;
  @JsonKey(name: 'form')
  final CustomPropertiesResponse? form;

  const RegistrationModelRequest({this.model, this.form});

  factory RegistrationModelRequest.fromJson(Map<String, dynamic> json) {
    return _$RegistrationModelRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RegistrationModelRequestToJson(this);
}
