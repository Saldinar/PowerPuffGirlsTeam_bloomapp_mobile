import 'package:amamini_client/core/resources/validation_mixin.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/presentation/screens/create_account/create_account_view.dart';
import 'package:amamini_client/features/presentation/screens/create_account/widgets/main_title.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class PasswordContainer extends StatefulWidget {
  final UpdateRegisterEntityCallBack onUpdateRegisterEntity;
  final CustomerInfoEntity registrationEntity;
  const PasswordContainer({
    required this.onUpdateRegisterEntity,
    required this.registrationEntity,
    super.key,
  });

  @override
  State<PasswordContainer> createState() => _PasswordContainerState();
}

class _PasswordContainerState extends State<PasswordContainer>
    with FormValidationMixin {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainDecoratedContainer(
      child: Column(
        children: [
          MainTitle(title: S.of(context).password),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            label: S.of(context).passwordRequired,
            controller: _passwordController,
            obscureText: true,
            onChanged: _onPasswordChanged,
            validator: validatePassword,
          ),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            label: S.of(context).confirmPassword,
            controller: _confirmPasswordController,
            obscureText: true,
            validator: (value) => validateConfirmPassword(
              _passwordController.text,
              value,
            ),
          ),
        ],
      ),
    );
  }

  void _onPasswordChanged(String value) {
    widget.onUpdateRegisterEntity(
      widget.registrationEntity.copyWith(password: value),
    );
  }
}
