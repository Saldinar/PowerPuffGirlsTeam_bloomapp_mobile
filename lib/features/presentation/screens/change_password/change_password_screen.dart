import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/core/resources/validation_mixin.dart';
import 'package:amamini_client/features/domain/entity/change_password/change_password_entity.dart';
import 'package:amamini_client/features/presentation/bloc/customer/change_password/change_password_bloc.dart';
import 'package:amamini_client/features/presentation/screens/change_password/view_model/change_password_view_model.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangePasswordBloc(inject()),
      child: const ChangePasswordView(),
    );
  }
}

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView>
    with FormValidationMixin {
  final _viewModel = ChangePasswordViewModel();
  final _formKey = GlobalKey<FormState>();
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  ChangePasswordEntity changePasswordEntity = ChangePasswordEntity();

  @override
  void dispose() {
    super.dispose();
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
  }

  void _onUpdatePasswordEntity(ChangePasswordEntity updatedEntity) {
    setState(() => changePasswordEntity = updatedEntity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).changePassword),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.unit),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MainTextFormField(
                label: '${S.of(context).oldPassword}*',
                controller: _oldPasswordController,
                validator: validatePassword,
                onChanged: _onOldPasswordChanged,
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainTextFormField(
                label: '${S.of(context).newPassword}*',
                controller: _newPasswordController,
                validator: validatePassword,
                onChanged: _onNewPasswordChanged,
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainTextFormField(
                label: '${S.of(context).confirmPassword}*',
                controller: _confirmPasswordController,
                onChanged: _onConfirmPasswordChanged,
                validator: (value) =>
                    validateConfirmPassword(_newPasswordController.text, value),
              ),
              const SizedBox(height: Dimensions.unit2),
              _buildChangePasswordButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChangePasswordButton() {
    return BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
      listener: (context, state) {
        if (state is ChangePasswordLoaded) {
          _changePasswordLoadedEvent();
        } else if (state is ChangePasswordError) {
          _showErrorDialog(state);
        }
      },
      builder: (context, state) {
        if (state is ChangePasswordLoading) {
          return const OrdinaryProgressIndicator();
        }
        return MainElevatedButton(
          title: S.of(context).changePassword,
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _viewModel.changePassword(context, changePasswordEntity);
            }
          },
        );
      },
    );
  }

  void _showErrorDialog(ChangePasswordError state) {
    showDialog(
      context: context,
      builder: (context) => BaseAlertDialog(
        title: state.message,
        onPressed: () => context.pop(),
      ),
    );
  }

  void _changePasswordLoadedEvent() {
    context.pop();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(S.of(context).passwordSuccess),
      ),
    );
  }

  void _onConfirmPasswordChanged(String value) {
    _onUpdatePasswordEntity(
      changePasswordEntity.copyWith(confirmNewPassword: value),
    );
  }

  void _onNewPasswordChanged(String value) {
    _onUpdatePasswordEntity(
      changePasswordEntity.copyWith(newPassword: value),
    );
  }

  void _onOldPasswordChanged(String value) {
    _onUpdatePasswordEntity(
      changePasswordEntity.copyWith(oldPassword: value),
    );
  }
}
