import 'package:amamini_client/features/presentation/bloc/auth/auth_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/customer/customer_info/customer_info_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomerViewModel {
  void logOut(BuildContext context) {
    context.pop();
    context.read<AuthBloc>().add(LogOutEvent());
  }

  void getCustomerInfo(BuildContext context) {
    context.read<CustomerInfoBloc>().add(GetCustomerInfoEvent());
  }

  String getInitials(String? firstName, String? lastName) {
    final firstInitial = (firstName?.isNotEmpty ?? false) ? firstName![0] : '';
    final lastInitial = (lastName?.isNotEmpty ?? false) ? lastName![0] : '';
    return (firstInitial + lastInitial).toUpperCase();
  }
}
