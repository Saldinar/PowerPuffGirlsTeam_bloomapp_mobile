import 'package:bloom/data/model/requests/auth_request/auth_request.dart';
import 'package:bloom/data/model/responses/auth_response/auth_response.dart';
import 'package:bloom/data/model/requests/register_request/register_request.dart';
import 'package:bloom/domain/entity/auth/auth_request_entity.dart';
import 'package:bloom/domain/entity/auth/auth_entity.dart';
import 'package:bloom/domain/entity/auth/auth_request_entity.dart';

extension AuthResponseMapper on AuthResponse {
  AuthEntity toEntity() {
    return AuthEntity(
      userName: username ?? '',
      customerId: customerId,
      token: token,
    );
  }
}

extension AuthRequestMapper on AuthRequestEntity {
  AuthRequest toRequest() {
    return AuthRequest(
      email: email,
      password: password,
      isGuest: isGuest,
      username: userName ?? '',
    );
  }
}

extension AuthRequestEntityMapper on AuthRequestEntity {
  RegisterRequests toRegisterRequest() {
    return RegisterRequests(
      username: userName ?? '', // потому что userName у тебя nullable
      email: email ?? '',
      password: password ?? '',
    );
  }
}
