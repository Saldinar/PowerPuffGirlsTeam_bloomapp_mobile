import 'package:equatable/equatable.dart';

class RegisterResponseEntity extends Equatable {
  RegisterResponseEntity({
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
