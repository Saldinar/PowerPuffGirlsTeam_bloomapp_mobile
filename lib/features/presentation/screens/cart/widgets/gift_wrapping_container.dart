import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class GiftWrappingContainer extends StatelessWidget {
  const GiftWrappingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MainDecoratedContainer(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).giftWrapping,
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: Dimensions.unit),
              MainDropDownMenu(
                width: width,
                initialSelection: false,
                entries: const [
                  DropdownMenuEntry(
                    value: false,
                    label: 'No',
                  ),
                  DropdownMenuEntry(
                    value: true,
                    label: 'Yes, [+ \$10.00]',
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
