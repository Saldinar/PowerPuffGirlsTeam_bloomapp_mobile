import 'package:bloom/domain/entity/auth/auth_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  final String message;
  final String? token;
  final String userName;
  final int customerId;

  RegisterResponse({
    required this.message,
    this.token,
    required this.userName,
    required this.customerId,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}
