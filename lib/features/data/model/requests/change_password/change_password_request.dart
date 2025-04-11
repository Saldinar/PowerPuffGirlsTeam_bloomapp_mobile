import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'change_password_request.g.dart';

@JsonSerializable()
class ChangePasswordRequest {
  @JsonKey(name: 'old_password')
  final String? oldPassword;
  @JsonKey(name: 'new_password')
  final String? newPassword;
  @JsonKey(name: 'confirm_new_password')
  final String? confirmNewPassword;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  ChangePasswordRequest({
    this.oldPassword,
    this.newPassword,
    this.confirmNewPassword,
    this.customProperties,
  });

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordRequestToJson(this);
}
