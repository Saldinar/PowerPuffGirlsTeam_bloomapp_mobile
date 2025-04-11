import 'package:bloom/domain/entity/auth/auth_request_entity.dart';
import 'package:bloom/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthViewModel {
  void authCustomer(BuildContext context, AuthRequestEntity request) {
    // context.read<AuthBloc>().add(AuthCustomerEvent(request: request));
  }
}
