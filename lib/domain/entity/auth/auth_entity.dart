import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  final String userName;
  final int customerId;
  final String token;
  AuthEntity({
    required this.userName,
    required this.customerId,
    required this.token,
  });

  @override
  List<Object?> get props => [userName, customerId, token];
}

class RegisterRequests {
  final String username;
  final String email;
  final String password;

  RegisterRequests({
    required this.username,
    required this.email,
    required this.password,
  });
}

