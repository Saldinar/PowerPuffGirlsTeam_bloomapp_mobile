import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  final String message;
  final String? token;
  final String userName;
  final int customerId;

  // ignore: sort_constructors_first
  const RegisterResponse({
    required this.message,
    required this.userName,
    required this.customerId,
    this.token,
  });

  // ignore: sort_constructors_first
  factory RegisterResponse.fromJson(Map<String, dynamic> json) => _$RegisterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}
