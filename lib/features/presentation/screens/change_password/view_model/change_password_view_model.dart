import 'package:amamini_client/features/domain/entity/change_password/change_password_entity.dart';
import 'package:amamini_client/features/presentation/bloc/customer/change_password/change_password_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordViewModel {
  void changePassword(BuildContext context, ChangePasswordEntity request) {
    context
        .read<ChangePasswordBloc>()
        .add(ChangeCustomerPasswordEvent(request: request));
  }
}
