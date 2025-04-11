import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class MainBottomSheet extends StatelessWidget {
  final Widget child;
  const MainBottomSheet({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(Dimensions.unit2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.unit2),
        child: child,
      ),
    );
  }
}
