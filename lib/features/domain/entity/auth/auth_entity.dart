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
