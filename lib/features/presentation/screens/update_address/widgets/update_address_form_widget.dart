import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/core/resources/validation_mixin.dart';
import 'package:amamini_client/features/domain/entity/address/add_address_model_entity.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/address.dart';
import 'package:amamini_client/features/presentation/bloc/address/update_address/update_address_bloc.dart';
import 'package:amamini_client/features/presentation/screens/update_address/view_model/update_address_view_model.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class UpdateAddressFormWidget extends StatefulWidget {
  final AddAddressModelEntity addressDetails;
  const UpdateAddressFormWidget({
    required this.addressDetails,
    super.key,
  });

  @override
  State<UpdateAddressFormWidget> createState() =>
      _UpdateAddressFormWidgetState();
}

class _UpdateAddressFormWidgetState extends State<UpdateAddressFormWidget>
    with FormValidationMixin {
  final _viewModel = UpdateAddressViewModel();
  late AddressEntity addressEntity;
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _companyController = TextEditingController();
  final _cityController = TextEditingController();
  final _address1Controller = TextEditingController();
  final _address2Controller = TextEditingController();
  final _zipCodeController = TextEditingController();
  final _phoneController = TextEditingController();
  final _faxController = TextEditingController();

  void _initControllers() {
    addressEntity = widget.addressDetails.address!;
    _firstNameController.text = widget.addressDetails.address?.firstName ?? '';
    _lastNameController.text = widget.addressDetails.address?.lastName ?? '';
    _emailController.text = widget.addressDetails.address?.email ?? '';
    _companyController.text = widget.addressDetails.address?.company ?? '';
    _cityController.text = widget.addressDetails.address?.city ?? '';
    _address1Controller.text = widget.addressDetails.address?.address1 ?? '';
    _address2Controller.text = widget.addressDetails.address?.address2 ?? '';
    _zipCodeController.text =
        widget.addressDetails.address?.zipPostalCode ?? '';
    _phoneController.text = widget.addressDetails.address?.phoneNumber ?? '';
    _faxController.text = widget.addressDetails.address?.faxNumber ?? '';
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
    _companyController.dispose();
    _cityController.dispose();
    _address1Controller.dispose();
    _address2Controller.dispose();
    _zipCodeController.dispose();
    _phoneController.dispose();
    _faxController.dispose();
  }

  void _onUpdateAddress(AddressEntity updatedDetails) {
    setState(() => addressEntity = updatedDetails);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.unit),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MainTextFormField(
                label: S.of(context).firstName,
                controller: _firstNameController,
                validator: validateFirstName,
                onChanged: _onUpdateFirstName,
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainTextFormField(
                label: S.of(context).lastName,
                controller: _lastNameController,
                validator: validateLastName,
                onChanged: _onUpdateLastName,
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainTextFormField(
                label: S.of(context).email,
                controller: _emailController,
                validator: validateEmail,
                onChanged: _onUpdateEmail,
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainTextFormField(
                label: S.of(context).company,
                controller: _companyController,
                onChanged: _onUpdateCompany,
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainDropDownMenu(
                label: S.of(context).selectCountry,
                width: MediaQuery.of(context).size.width * .96,
                entries: const [],
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainDropDownMenu(
                label: S.of(context).selectState,
                width: MediaQuery.of(context).size.width * .96,
                entries: const [],
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainTextFormField(
                label: '${S.of(context).city}*',
                controller: _cityController,
                validator: validateCity,
                onChanged: _onUpdateCity,
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainTextFormField(
                label: '${S.of(context).address}1*',
                controller: _address1Controller,
                validator: validateAddress,
                onChanged: _onUpdateAddress1,
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainTextFormField(
                label: '${S.of(context).address}2*',
                controller: _address2Controller,
                validator: validateAddress,
                onChanged: _onUpdateAddress2,
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainTextFormField(
                label: S.of(context).zipPostalCode,
                controller: _zipCodeController,
                onChanged: _onUpdateZipPostalCode,
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainTextFormField(
                label: '${S.of(context).phone}*',
                controller: _phoneController,
                validator: validateMobile,
                onChanged: _onUpdatePhone,
              ),
              const SizedBox(height: Dimensions.unit1_5),
              MainTextFormField(
                label: S.of(context).fax,
                controller: _faxController,
                onChanged: _onUpdateFaxNumber,
              ),
              const SizedBox(height: Dimensions.unit),
              _buildSaveButton(),
            ],
          ),
        ),
      ),
    );
  }

  BlocProvider<UpdateAddressBloc> _buildSaveButton() {
    return BlocProvider(
      create: (context) => UpdateAddressBloc(inject()),
      child: BlocConsumer<UpdateAddressBloc, UpdateAddressState>(
        listener: (context, state) {
          if (state is UpdateAddressLoaded) {
            context.pop(true);
          } else if (state is UpdateAddressError) {
            _showErrorDialog(context, state);
          }
        },
        builder: (context, state) {
          if (state is UpdateAddressLoading) {
            return const OrdinaryProgressIndicator();
          }
          return MainElevatedButton(
            title: S.of(context).save,
            width: double.infinity,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _viewModel.updateAddress(context, addressEntity);
              }
            },
          );
        },
      ),
    );
  }

  Future<dynamic> _showErrorDialog(
    BuildContext context,
    UpdateAddressError state,
  ) {
    return showDialog(
      context: context,
      builder: (context) {
        return BaseAlertDialog(
          title: state.message,
          onPressed: () => context.pop(),
        );
      },
    );
  }

  void _onUpdateFaxNumber(String value) =>
      _onUpdateAddress(addressEntity.copyWith(faxNumber: value));

  void _onUpdatePhone(String value) =>
      _onUpdateAddress(addressEntity.copyWith(phoneNumber: value));

  void _onUpdateZipPostalCode(String value) =>
      _onUpdateAddress(addressEntity.copyWith(zipPostalCode: value));

  void _onUpdateAddress2(String value) =>
      _onUpdateAddress(addressEntity.copyWith(address2: value));

  void _onUpdateAddress1(String value) =>
      _onUpdateAddress(addressEntity.copyWith(address1: value));

  void _onUpdateCity(String value) =>
      _onUpdateAddress(addressEntity.copyWith(city: value));

  void _onUpdateCompany(String value) =>
      _onUpdateAddress(addressEntity.copyWith(company: value));

  void _onUpdateEmail(String value) =>
      _onUpdateAddress(addressEntity.copyWith(email: value));

  void _onUpdateLastName(String value) =>
      _onUpdateAddress(addressEntity.copyWith(lastName: value));

  void _onUpdateFirstName(String value) =>
      _onUpdateAddress(addressEntity.copyWith(firstName: value));
}
