import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback onAccept;
  final String text;

  const ActionButton({
    Key? key,
    required this.onAccept,
    this.text = 'I Accept',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onAccept,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 56),
        backgroundColor: ApplicationColors.primary,
        foregroundColor: ApplicationColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        text,
        style: AppTextStyles.buttonText,
      ),
    );
  }
}
