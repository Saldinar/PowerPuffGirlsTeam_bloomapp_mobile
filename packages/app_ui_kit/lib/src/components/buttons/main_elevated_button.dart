// ignore_for_file: sort_constructors_first

import 'package:flutter/material.dart';

class MainElevatedButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final double? width;
  const MainElevatedButton({
    required this.title,
    required this.onPressed,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: theme.textTheme.titleSmall?.copyWith(
              color: theme.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
