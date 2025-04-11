import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/registration/registration_bloc.dart';
import 'package:amamini_client/features/presentation/screens/create_account/create_account_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationBloc(inject()),
      child: const CreateAccountView(),
    );
  }
}
