import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/registration_model/registration_model_entity.dart';
import 'package:amamini_client/features/presentation/bloc/customer/update_customer_info/update_customer_bloc.dart';
import 'package:amamini_client/features/presentation/screens/edit_customer_info_screen/view_model/update_customer_view_model.dart';
import 'package:amamini_client/features/presentation/screens/edit_customer_info_screen/widgets/edit_company_details_container.dart';
import 'package:amamini_client/features/presentation/screens/edit_customer_info_screen/widgets/edit_personal_details_container.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

typedef OnUpdateCustomerInfoCallBack = Function(CustomerInfoEntity);

class EditCustomerInfoView extends StatefulWidget {
  final CustomerInfoEntity customerInfoEntity;
  const EditCustomerInfoView({
    required this.customerInfoEntity,
    super.key,
  });

  @override
  State<EditCustomerInfoView> createState() => _EditCustomerInfoViewState();
}

class _EditCustomerInfoViewState extends State<EditCustomerInfoView> {
  final _formKey = GlobalKey<FormState>();
  final _viewModel = UpdateCustomerViewModel();
  late CustomerInfoEntity _customerInfo;

  @override
  void initState() {
    super.initState();
    _customerInfo = widget.customerInfoEntity;
  }

  void _onUpdateCustomerInfo(CustomerInfoEntity updatedEntity) {
    setState(() => _customerInfo = updatedEntity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: S.of(context).myAccountInfo),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.unit2),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                EditPersonalDetailsContainer(
                  customerInfoEntity: _customerInfo,
                  onUpdateCustomerInfo: _onUpdateCustomerInfo,
                ),
                const SizedBox(height: Dimensions.unit),
                EditCompanyDetailsContainer(
                  customerInfoEntity: _customerInfo,
                  onUpdateCustomerInfo: _onUpdateCustomerInfo,
                ),
                const SizedBox(height: Dimensions.unit2),
                _buildSaveButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BlocConsumer<UpdateCustomerBloc, UpdateCustomerState> _buildSaveButton() {
    return BlocConsumer<UpdateCustomerBloc, UpdateCustomerState>(
      listener: (context, state) {
        if (state is UpdateCustomerLoaded) {
          _showSuccessSnackBar();
          context.pop(true);
        }
      },
      builder: (context, state) {
        if (state is UpdateCustomerLoading) {
          return const OrdinaryProgressIndicator();
        }
        return MainElevatedButton(
          width: double.infinity,
          title: S.of(context).save,
          onPressed: _onUpdateInfo,
        );
      },
    );
  }

  void _showSuccessSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(S.of(context).personalDetailsWasUpdated),
        backgroundColor: Colors.green,
      ),
    );
  }

  void _onUpdateInfo() {
    if (_formKey.currentState!.validate()) {
      final request = RegistrationModelEntity(
        model: _customerInfo,
        form: CustomPropertiesEntity(
          additionalProp1: '',
          additionalProp2: '',
          additionalProp3: '',
        ),
      );
      _viewModel.updateCustomer(context, request);
    }
  }
}
