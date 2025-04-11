import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/core/resources/validation_mixin.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/address.dart';
import 'package:amamini_client/features/presentation/bloc/address/add_address/add_address_bloc.dart';
import 'package:amamini_client/features/presentation/screens/add_customer_address/view_model/add_address_view_model.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AddCustomerAddressScreen extends StatefulWidget {
  const AddCustomerAddressScreen({super.key});

  @override
  State<AddCustomerAddressScreen> createState() =>
      _AddCustomerAddressScreenState();
}

class _AddCustomerAddressScreenState extends State<AddCustomerAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddAddressBloc(inject()),
      child: const AddCustomerAddressView(),
    );
  }
}

class AddCustomerAddressView extends StatefulWidget {
  const AddCustomerAddressView({
    super.key,
  });

  @override
  State<AddCustomerAddressView> createState() => _AddCustomerAddressViewState();
}

class _AddCustomerAddressViewState extends State<AddCustomerAddressView>
    with FormValidationMixin {
  final _viewModel = AddAddressViewModel();
  AddressEntity addressData = const AddressEntity();
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

  void _onUpdateAddressData(AddressEntity updatedEntity) {
    setState(() => addressData = updatedEntity);
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.unit),
      child: Scaffold(
        appBar: MainAppBar(title: S.of(context).addNewAddress),
        body: SingleChildScrollView(
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
                  width: MediaQuery.of(context).size.height * .96,
                  label: S.of(context).selectCountry,
                  entries: const [],
                ),
                const SizedBox(height: Dimensions.unit1_5),
                MainDropDownMenu(
                  width: MediaQuery.of(context).size.height * .96,
                  label: S.of(context).selectState,
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
                  validator: validateCity,
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
                  onChanged: _onUpdateFax,
                ),
                const SizedBox(height: Dimensions.unit1_5),
                _buildAddAddressButton(),
                const SizedBox(height: Dimensions.unit1_5),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAddAddressButton() {
    return BlocConsumer<AddAddressBloc, AddAddressState>(
      listener: (context, state) {
        if (state is AddAddressLoaded) {
          context.pop(true);
        }
      },
      builder: (context, state) {
        if (state is AddAddressLoading) {
          return const OrdinaryProgressIndicator();
        } else if (state is AddAddressError) {
          return const SizedBox.shrink();
        }
        return MainElevatedButton(
          title: S.of(context).save,
          width: double.infinity,
          onPressed: _onAddAddress,
        );
      },
    );
  }

  void _onAddAddress() {
    if (_formKey.currentState!.validate()) {
      _viewModel.addAddress(context, addressData);
    }
  }

  void _onUpdateFax(String value) {
    _onUpdateAddressData(addressData.copyWith(faxNumber: value));
  }

  void _onUpdatePhone(String value) {
    _onUpdateAddressData(addressData.copyWith(phoneNumber: value));
  }

  void _onUpdateZipPostalCode(String value) {
    _onUpdateAddressData(addressData.copyWith(zipPostalCode: value));
  }

  void _onUpdateAddress2(String value) {
    _onUpdateAddressData(addressData.copyWith(address2: value));
  }

  void _onUpdateAddress1(String value) {
    _onUpdateAddressData(addressData.copyWith(address1: value));
  }

  void _onUpdateCity(String value) {
    _onUpdateAddressData(addressData.copyWith(city: value));
  }

  void _onUpdateCompany(String value) {
    _onUpdateAddressData(addressData.copyWith(company: value));
  }

  void _onUpdateEmail(String value) {
    _onUpdateAddressData(addressData.copyWith(email: value));
  }

  void _onUpdateLastName(String value) {
    _onUpdateAddressData(addressData.copyWith(lastName: value));
  }

  void _onUpdateFirstName(String value) {
    _onUpdateAddressData(addressData.copyWith(firstName: value));
  }
}
