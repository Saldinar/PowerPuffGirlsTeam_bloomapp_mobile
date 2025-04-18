import 'package:bloom/data/dto/requests/auth_request/auth_request.dart';
import 'package:bloom/data/dto/requests/register_request/register_request.dart';
import 'package:bloom/data/dto/responses/auth_response/auth_response.dart';
import 'package:bloom/data/dto/responses/register_response/register_response.dart';
import 'package:bloom/domain/entity/auth/auth_request_entity.dart';
import 'package:bloom/domain/entity/auth/auth_response_entity.dart';
import 'package:bloom/domain/entity/register/register_request_entity.dart';
import 'package:bloom/domain/entity/register/register_response_entity.dart';

// extension AuthResponseMapperExt on AuthResponse {
//   AuthResponseEntity toEntity() {
//     return AuthResponseEntity(
//       username: username,
//       customerId: customerId,
//       token: token,
//     );
//   }
// }
//
// extension AuthRequestMapperExt on RegisterRequestEntity {
//   AuthRequest toEntity() {
//     return AuthRequest(
//       email: email,
//       password: password,
//       username: userName,
//     );
//   }
// }

extension RegisterRequestEntityToRequest on RegisterRequestEntity {
  RegisterRequest toRequest() {
    return RegisterRequest(
      email: email,
      password: password,
    );
  }
}


extension RegisterRequestMapperExt on RegisterResponse {
  RegisterResponseEntity toEntity() {
    return RegisterResponseEntity(
      // email: email,
      // password: password,
      username: userName,
      customerId: 1,
      token: '',
    );
  }
}


