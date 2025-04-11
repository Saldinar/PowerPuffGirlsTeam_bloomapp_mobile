import 'package:amamini_client/core/resources/validation_mixin.dart';
import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/presentation/screens/create_account/create_account_view.dart';
import 'package:amamini_client/features/presentation/screens/create_account/widgets/main_title.dart';
import 'package:amamini_client/features/presentation/screens/create_account/widgets/select_gender_widget.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class PersonalInformationContainer extends StatefulWidget {
  final UpdateRegisterEntityCallBack onUpdateRegisterEntity;
  final CustomerInfoEntity registrationEntity;
  const PersonalInformationContainer({
    required this.onUpdateRegisterEntity,
    required this.registrationEntity,
    super.key,
  });

  @override
  State<PersonalInformationContainer> createState() =>
      _PersonalInformationContainerState();
}

class _PersonalInformationContainerState
    extends State<PersonalInformationContainer> with FormValidationMixin {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  String? _selectedGender;
  @override
  void initState() {
    super.initState();
    _selectedGender = widget.registrationEntity.gender;
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
    return MainDecoratedContainer(
      child: Column(
        children: [
          MainTitle(title: S.of(context).yourPersonalDetails),
          const SizedBox(height: Dimensions.unit),
          SelectGenderWidget(
            selectedGender: _selectedGender,
            onGenderSelected: _onGenderChanged,
          ),
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
            controller: _emailController,
            keyBoardType: TextInputType.emailAddress,
            onChanged: _onEmailChanged,
            validator: validateEmail,
          ),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            controller: _dateOfBirthController,
            label: S.of(context).dateOfBirth,
          ),
        ],
      ),
    );
  }

  void _onEmailChanged(String value) => widget.onUpdateRegisterEntity(
        widget.registrationEntity.copyWith(email: value),
      );

  void _onLastNameChanged(String value) {
    widget.onUpdateRegisterEntity(
      widget.registrationEntity.copyWith(lastName: value),
    );
  }

  void _onFirstNameChanged(String value) {
    widget.onUpdateRegisterEntity(
      widget.registrationEntity.copyWith(firstName: value),
    );
  }

  void _onGenderChanged(String? gender) {
    setState(() => _selectedGender = gender);
    widget.onUpdateRegisterEntity(
      widget.registrationEntity.copyWith(
        gender: _selectedGender,
      ),
    );
  }
}
