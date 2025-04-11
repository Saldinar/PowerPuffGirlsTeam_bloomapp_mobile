import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/presentation/screens/create_account/create_account_view.dart';
import 'package:amamini_client/features/presentation/screens/create_account/widgets/main_title.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class CompanyDetailsContainer extends StatefulWidget {
  final UpdateRegisterEntityCallBack onUpdateRegisterEntity;
  final CustomerInfoEntity registrationEntity;
  const CompanyDetailsContainer({
    required this.onUpdateRegisterEntity,
    required this.registrationEntity,
    super.key,
  });

  @override
  State<CompanyDetailsContainer> createState() =>
      _CompanyDetailsContainerState();
}

class _CompanyDetailsContainerState extends State<CompanyDetailsContainer> {
  final _companyController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _companyController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainDecoratedContainer(
      child: Column(
        children: [
          MainTitle(title: S.of(context).companyDetails),
          const SizedBox(height: Dimensions.unit),
          MainTextFormField(
            label: S.of(context).company,
            controller: _companyController,
            onChanged: _onCompanyChanged,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }

  void _onCompanyChanged(String value) {
    widget.onUpdateRegisterEntity(
      widget.registrationEntity.copyWith(company: value),
    );
  }
}
