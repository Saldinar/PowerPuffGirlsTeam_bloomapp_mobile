import 'package:amamini_client/generated/l10n.dart';
import 'package:flutter/material.dart';

class SelectGenderWidget extends StatelessWidget {
  final String? selectedGender;
  final ValueChanged<String?> onGenderSelected;

  const SelectGenderWidget({
    required this.selectedGender,
    required this.onGenderSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Text(
          S.of(context).gender,
          style: theme.textTheme.titleMedium
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        Radio<String>(
          value: S.of(context).male,
          groupValue: selectedGender,
          onChanged: onGenderSelected,
        ),
        Text(
          S.of(context).male,
          style:
              theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
        ),
        Radio<String>(
          value: S.of(context).female,
          groupValue: selectedGender,
          onChanged: onGenderSelected,
        ),
        Text(
          S.of(context).female,
          style:
              theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
