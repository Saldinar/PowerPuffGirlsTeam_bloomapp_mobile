import 'package:amamini_client/features/presentation/bloc/auth/auth_bloc.dart';
import 'package:amamini_client/features/presentation/screens/account/screens/customer_details_view.dart';
import 'package:amamini_client/features/presentation/screens/account/screens/unauthorized_account_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (BuildContext context, AuthState state) {
        if (state is AuthLoaded) {
          return const CustomerDetailsView();
        } else if (state is GuestLoaded) {
          return const UnauthorizedAccountView();
        }
        return const UnauthorizedAccountView();
      },
    );
  }
}
