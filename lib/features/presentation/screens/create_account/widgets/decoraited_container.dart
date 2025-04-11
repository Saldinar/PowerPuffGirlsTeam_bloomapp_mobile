import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class DecoratedContainer extends StatelessWidget {
  final List<Widget> children;
  const DecoratedContainer({
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(Dimensions.unit1_5),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 4,
            color: theme.shadowColor,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.unit),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
