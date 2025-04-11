import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/presentation/bloc/registration/registration_bloc.dart';
import 'package:amamini_client/features/presentation/screens/create_account/view_model/create_account_view_model.dart';
import 'package:amamini_client/features/presentation/screens/create_account/widgets/company_details_container.dart';
import 'package:amamini_client/features/presentation/screens/create_account/widgets/options_container.dart';
import 'package:amamini_client/features/presentation/screens/create_account/widgets/password_container.dart';
import 'package:amamini_client/features/presentation/screens/create_account/widgets/personal_information_container.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

typedef UpdateRegisterEntityCallBack = Function(CustomerInfoEntity);

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({
    super.key,
  });

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  final _viewModel = CreateAccountViewModel();
  final _formKey = GlobalKey<FormState>();
  CustomerInfoEntity _infoEntity = const CustomerInfoEntity();

  void _onUpdateRegisterEntity(CustomerInfoEntity updatedEntity) {
    setState(() => _infoEntity = updatedEntity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).register),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.unit),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: Dimensions.unit2),
                PersonalInformationContainer(
                  registrationEntity: _infoEntity,
                  onUpdateRegisterEntity: _onUpdateRegisterEntity,
                ),
                const SizedBox(height: Dimensions.unit),
                CompanyDetailsContainer(
                  registrationEntity: _infoEntity,
                  onUpdateRegisterEntity: _onUpdateRegisterEntity,
                ),
                const SizedBox(height: Dimensions.unit),
                OptionsContainer(
                  registrationEntity: _infoEntity,
                  onUpdateRegisterEntity: _onUpdateRegisterEntity,
                ),
                const SizedBox(height: Dimensions.unit),
                PasswordContainer(
                  registrationEntity: _infoEntity,
                  onUpdateRegisterEntity: _onUpdateRegisterEntity,
                ),
                const SizedBox(height: Dimensions.unit2),
                _buildRegistrationButton(),
                const SizedBox(height: Dimensions.unit2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRegistrationButton() {
    return BlocConsumer<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        if (state is RegistrationError) {
          _showRegistrationErrorMessage(state);
        } else if (state is RegistrationLoaded) {
          _showSnackBar();
          context.pushReplacementNamed(Routes.logInPage.name);
        }
      },
      builder: (context, state) {
        if (state is RegistrationLoading) {
          return const OrdinaryProgressIndicator();
        }
        return MainElevatedButton(
          title: S.of(context).register,
          width: double.infinity,
          onPressed: _onRegistrationEvent,
        );
      },
    );
  }

  void _showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(S.of(context).registrationWasSuccessful),
        backgroundColor: Colors.green,
      ),
    );
  }

  void _onRegistrationEvent() {
    if (_formKey.currentState!.validate()) {
      _viewModel.createAccount(context, _infoEntity);
    }
  }

  void _showRegistrationErrorMessage(RegistrationError state) {
    showDialog(
      context: context,
      builder: (context) => BaseAlertDialog(
        title: state.message,
        onPressed: () => context.pop(),
      ),
    );
  }
}
