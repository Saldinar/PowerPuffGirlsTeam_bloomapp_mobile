// ignore_for_file: sort_constructors_first

import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class OpacityBorderedButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  final double? borderRadius;
  const OpacityBorderedButton({
    required this.name,
    required this.onPressed,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.scaffoldBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? Dimensions.unit),
          side: BorderSide(
            color: theme.indicatorColor,
            width: 1,
          ),
        ),
      ),
      child: Text(
        name,
        style: theme.textTheme.titleSmall,
      ),
    );
  }
}
