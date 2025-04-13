import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class IconCircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double size;
  final Color backgroundColor;
  final Color iconColor;

  const IconCircleButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.size = 56.0,
    this.backgroundColor = ApplicationColors.primary,
    this.iconColor = ApplicationColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(16),
        minimumSize: Size(size, size),
        backgroundColor: backgroundColor,
        foregroundColor: iconColor,
      ),
      child: Icon(icon),
    );
  }
}
