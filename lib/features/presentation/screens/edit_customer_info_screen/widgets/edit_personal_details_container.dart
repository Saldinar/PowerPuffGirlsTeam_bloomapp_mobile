import 'package:amamini_client/core/resources/validation_mixin.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/presentation/screens/edit_customer_info_screen/edit_customer_info_view.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class EditPersonalDetailsContainer extends StatefulWidget {
  final CustomerInfoEntity customerInfoEntity;
  final OnUpdateCustomerInfoCallBack onUpdateCustomerInfo;
  const EditPersonalDetailsContainer({
    required this.customerInfoEntity,
    required this.onUpdateCustomerInfo,
    super.key,
  });

  @override
  State<EditPersonalDetailsContainer> createState() =>
      _EditPersonalDetailsContainerState();
}

class _EditPersonalDetailsContainerState
    extends State<EditPersonalDetailsContainer> with FormValidationMixin {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  void _initControllers() {
    _firstNameController.text = widget.customerInfoEntity.firstName ?? '';
    _lastNameController.text = widget.customerInfoEntity.lastName ?? '';
    _emailController.text = widget.customerInfoEntity.email ?? '';
  }

  @override
  void initState() {
    super.initState();
    _initControllers();
  }

  @override
  void dispose() {
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _dateOfBirthController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MainDecoratedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).yourPersonalDetails,
            style: theme.textTheme.titleLarge,
          ),
          // const SelectGenderWidget(),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            label: S.of(context).firstName,
            controller: _firstNameController,
            onChanged: _onFirstNameChanged,
            validator: validateFirstName,
          ),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            label: S.of(context).lastName,
            controller: _lastNameController,
            onChanged: _onLastNameChanged,
            validator: validateLastName,
          ),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            label: S.of(context).email,
            onChanged: _onEmailChanged,
            controller: _emailController,
            validator: validateEmail,
          ),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            label: S.of(context).dateOfBirth,
            controller: _dateOfBirthController,
          ),
        ],
      ),
    );
  }

  void _onFirstNameChanged(String value) {
    widget.onUpdateCustomerInfo(
      widget.customerInfoEntity.copyWith(firstName: value),
    );
  }

  void _onLastNameChanged(String value) {
    widget.onUpdateCustomerInfo(
      widget.customerInfoEntity.copyWith(lastName: value),
    );
  }

  void _onEmailChanged(String value) {
    widget.onUpdateCustomerInfo(
      widget.customerInfoEntity.copyWith(email: value),
    );
  }
}
