// ignore_for_file: sort_constructors_first

import 'package:flutter/material.dart';

const _buttonSize = 50.0;

class CounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const CounterButton({
    required this.icon,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: _buttonSize,
        width: _buttonSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: theme.primaryColor,
          border: Border.all(color: theme.disabledColor),
        ),
        child: Icon(icon),
      ),
    );
  }
}
