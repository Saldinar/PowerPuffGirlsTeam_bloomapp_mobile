import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class DiscountFieldAndButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final TextEditingController controller;
  const DiscountFieldAndButton({
    required this.label,
    required this.onPressed,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainDecoratedContainer(
      child: Row(
        children: [
          Expanded(
            child: MainTextFormField(
              label: label,
              controller: controller,
            ),
          ),
          const SizedBox(width: Dimensions.unit),
          MainElevatedButton(
            title: S.of(context).apply,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
