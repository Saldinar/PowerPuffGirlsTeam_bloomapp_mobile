import 'package:equatable/equatable.dart';

class RegisterRequestEntity extends Equatable {
  RegisterRequestEntity({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  // AuthRequestEntity copyWith({
  //   bool? isGuest,
  //   String? userName,
  //   String? email,
  //   String? password,
  // }) {
  //   return AuthRequestEntity(
  //     email: email ?? this.email,
  //     password: password ?? this.password,
  //     isGuest: isGuest ?? this.isGuest,
  //     userName: userName ?? this.userName,
  //   );
  // }

  @override
  List<Object?> get props => [email, password];
}
