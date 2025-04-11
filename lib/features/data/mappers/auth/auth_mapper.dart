import 'package:amamini_client/features/data/model/requests/auth_request/auth_request.dart';
import 'package:amamini_client/features/data/model/responses/auth_response/auth_response.dart';
import 'package:amamini_client/features/domain/entity/auth/auth_entity.dart';
import 'package:amamini_client/features/domain/entity/auth/auth_request_entity.dart';

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
