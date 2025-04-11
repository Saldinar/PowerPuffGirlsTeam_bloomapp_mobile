import 'package:amamini_client/core/resources/validation_mixin.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return const PasswordRecoveryView();
  }
}

class PasswordRecoveryView extends StatefulWidget {
  const PasswordRecoveryView({super.key});

  @override
  State<PasswordRecoveryView> createState() => _PasswordRecoveryViewState();
}

class _PasswordRecoveryViewState extends State<PasswordRecoveryView>
    with FormValidationMixin {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).passwordRecovery),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.unit),
          child: Column(
            children: [
              Text(
                S.of(context).recoveryPasswordMessage,
                style: theme.textTheme.titleSmall,
              ),
              const SizedBox(height: Dimensions.unit),
              MainTextFormField(
                controller: _emailController,
                validator: validateEmail,
                label: S.of(context).email,
              ),
              const SizedBox(height: Dimensions.unit),
              MainElevatedButton(
                width: double.infinity,
                title: S.of(context).recover,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
