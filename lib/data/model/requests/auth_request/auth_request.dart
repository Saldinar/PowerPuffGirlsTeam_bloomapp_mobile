import 'package:json_annotation/json_annotation.dart';

part 'auth_request.g.dart';

@JsonSerializable()
class AuthRequest {
  @JsonKey(name: 'is_guest')
  final bool? isGuest;
  final String? username;
  final String? email;
  final String? password;

  const AuthRequest({
    this.email,
    this.password,
    this.isGuest,
    this.username,
  });

  factory AuthRequest.fromJson(Map<String, dynamic> json) {
    return _$AuthRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthRequestToJson(this);
}
