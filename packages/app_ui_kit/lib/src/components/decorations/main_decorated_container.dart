// ignore_for_file: sort_constructors_first

import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class MainDecoratedContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  const MainDecoratedContainer({
    required this.child,
    super.key,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(Dimensions.unit),
      height: height,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(Dimensions.unit1_5),
        boxShadow: [
          BoxShadow(
            spreadRadius: 4,
            blurRadius: 2,
            color: theme.shadowColor,
          ),
        ],
      ),
      child: child,
    );
  }
}
