import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'password_request.g.dart';

@JsonSerializable()
class PasswordRequest {
  @JsonKey(name: 'old_password')
  final String oldPassword;
  @JsonKey(name: 'new_password')
  final String newPassword;
  @JsonKey(name: 'confirm_new_password')
  final String confirmNewPassword;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const PasswordRequest({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmNewPassword,
    this.customProperties,
  });

  factory PasswordRequest.fromJson(Map<String, dynamic> json) {
    return _$PasswordRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PasswordRequestToJson(this);
}
