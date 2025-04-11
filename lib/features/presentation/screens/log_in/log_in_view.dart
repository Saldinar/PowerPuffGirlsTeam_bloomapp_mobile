import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/core/resources/validation_mixin.dart';
import 'package:amamini_client/features/domain/entity/auth/auth_request_entity.dart';
import 'package:amamini_client/features/presentation/bloc/auth/auth_bloc.dart';
import 'package:amamini_client/features/presentation/screens/log_in/view_model/view_model.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LogInView extends StatefulWidget {
  const LogInView({
    super.key,
  });

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> with FormValidationMixin {
  final _viewModel = AuthViewModel();
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).logIn),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.unit),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: Dimensions.unit2),
              MainDecoratedContainer(
                child: Column(
                  children: [
                    MainTextFormField(
                      label: S.of(context).email,
                      controller: _emailController,
                      validator: validateEmail,
                      keyBoardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: Dimensions.unit),
                    MainTextFormField(
                      label: S.of(context).passwordRequired,
                      controller: _passwordController,
                      obscureText: true,
                      validator: validatePassword,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: Dimensions.unit2),
              _buildLogInButton(theme),
              TextButton(
                onPressed: () =>
                    context.pushNamed(Routes.passwordRecoveryPage.name),
                child: Text(
                  S.of(context).forgotPassword,
                  style: theme.textTheme.titleSmall
                      ?.copyWith(color: AppColors.darkBlue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BlocConsumer<AuthBloc, AuthState> _buildLogInButton(ThemeData theme) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthError) {
          _showAdaptiveDialog(context, state, theme);
        } else if (state is AuthLoaded) {
          context.goNamed(Routes.accountDetailsPage.name);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return const OrdinaryProgressIndicator();
        }
        return MainElevatedButton(
          title: S.of(context).logIn,
          onPressed: () => _login(context),
        );
      },
    );
  }

  Future<dynamic> _showAdaptiveDialog(
    BuildContext context,
    AuthError state,
    ThemeData theme,
  ) {
    return showAdaptiveDialog(
      context: context,
      builder: (context) {
        return BaseAlertDialog(
          title: state.message,
          onPressed: () => context.pop(),
        );
      },
    );
  }

  void _login(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      final request = AuthRequestEntity(
        isGuest: false,
        email: _emailController.text,
        password: _passwordController.text,
      );
      _viewModel.authCustomer(context, request);
    }
  }
}
