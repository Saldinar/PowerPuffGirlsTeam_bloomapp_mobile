import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/presentation/screens/create_account/create_account_view.dart';
import 'package:amamini_client/features/presentation/screens/create_account/widgets/main_title.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class OptionsContainer extends StatefulWidget {
  final UpdateRegisterEntityCallBack onUpdateRegisterEntity;
  final CustomerInfoEntity registrationEntity;
  const OptionsContainer({
    required this.onUpdateRegisterEntity,
    required this.registrationEntity,
    super.key,
  });

  @override
  State<OptionsContainer> createState() => _OptionsContainerState();
}

class _OptionsContainerState extends State<OptionsContainer> {
  @override
  Widget build(BuildContext context) {
    return MainDecoratedContainer(
      child: Column(
        children: [
          MainTitle(title: S.of(context).options),
          const SizedBox(height: Dimensions.unit),
          SwitchListTile.adaptive(
            title: Text(S.of(context).newsletter),
            value: widget.registrationEntity.newsletter,
            onChanged: _onNewsLetterChanged,
          ),
        ],
      ),
    );
  }

  void _onNewsLetterChanged(bool value) {
    widget.onUpdateRegisterEntity(
      widget.registrationEntity.copyWith(newsletter: value),
    );
  }
}
