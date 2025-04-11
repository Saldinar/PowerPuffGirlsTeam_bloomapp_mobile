import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class CustomerDetailsCard extends StatelessWidget {
  final IconData icon;
  final void Function(BuildContext) onTap;
  final String Function(BuildContext) titleBuilder;
  const CustomerDetailsCard({
    required this.icon,
    required this.onTap,
    required this.titleBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title = titleBuilder(context);
    return GestureDetector(
      onTap: () => onTap(context),
      child: Container(
        height: Dimensions.unit7,
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(Dimensions.unit1_5),
          boxShadow: [
            BoxShadow(
              spreadRadius: Dimensions.unit0_25,
              blurRadius: Dimensions.unit0_5,
              color: theme.shadowColor,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimensions.unit),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(width: Dimensions.unit1_5),
              Text(
                title,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
