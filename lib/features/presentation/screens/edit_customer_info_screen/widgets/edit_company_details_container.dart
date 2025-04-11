import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/presentation/screens/edit_customer_info_screen/edit_customer_info_view.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class EditCompanyDetailsContainer extends StatefulWidget {
  final CustomerInfoEntity customerInfoEntity;
  final OnUpdateCustomerInfoCallBack onUpdateCustomerInfo;
  const EditCompanyDetailsContainer({
    required this.customerInfoEntity,
    required this.onUpdateCustomerInfo,
    super.key,
  });

  @override
  State<EditCompanyDetailsContainer> createState() =>
      _EditCompanyDetailsContainerState();
}

class _EditCompanyDetailsContainerState
    extends State<EditCompanyDetailsContainer> {
  final _companyController = TextEditingController();

  void _initControllers() {
    _companyController.text = widget.customerInfoEntity.company ?? '';
  }

  @override
  void initState() {
    super.initState();
    _initControllers();
  }

  @override
  void dispose() {
    super.dispose();
    _companyController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MainDecoratedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).companyDetails,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            label: S.of(context).company,
            controller: _companyController,
            onChanged: _onUpdateCompany,
          ),
        ],
      ),
    );
  }

  void _onUpdateCompany(String value) {
    widget.onUpdateCustomerInfo(
      widget.customerInfoEntity.copyWith(company: value),
    );
  }
}
