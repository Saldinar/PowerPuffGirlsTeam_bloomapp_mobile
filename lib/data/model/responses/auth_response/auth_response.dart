import 'package:json_annotation/json_annotation.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse {
  final String? username;
  @JsonKey(name: 'customer_id')
  final int customerId;
  final String token;

  const AuthResponse({
    required this.customerId,
    required this.token,
    this.username,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return _$AuthResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}
