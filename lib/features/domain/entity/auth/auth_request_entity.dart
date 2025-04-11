import 'package:equatable/equatable.dart';

class AuthRequestEntity extends Equatable {
  final bool isGuest;
  final String? userName;
  final String? email;
  final String? password;
  AuthRequestEntity({
    this.email,
    this.password,
    this.isGuest = true,
    this.userName,
  });
  AuthRequestEntity copyWith({
    bool? isGuest,
    String? userName,
    String? email,
    String? password,
  }) {
    return AuthRequestEntity(
      email: email ?? this.email,
      password: password ?? this.password,
      isGuest: isGuest ?? this.isGuest,
      userName: userName ?? this.userName,
    );
  }

  @override
  List<Object?> get props => [isGuest, userName, email, password];
}
