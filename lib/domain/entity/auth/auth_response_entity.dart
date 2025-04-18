import 'package:equatable/equatable.dart';

class AuthResponseEntity extends Equatable {
  AuthResponseEntity({
    required this.username,
    required this.customerId,
    required this.token,
  });

  final String username;
  final int customerId;
  final String token;

  @override
  List<Object?> get props => [username, customerId, token];
}

// class RegisterRequests extends Equatable {
//   RegisterRequests({
//     required this.username,
//     required this.email,
//     required this.password,
//   });
//
//   final String username;
//   final String email;
//   final String password;
//
//   @override
//   List<Object?> get props => [username, email, password];
// }
