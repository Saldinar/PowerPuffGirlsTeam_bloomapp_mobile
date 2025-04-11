import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class OrdinaryProgressIndicator extends StatelessWidget {
  const OrdinaryProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator.adaptive(
      backgroundColor: AppColors.darkBlue,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
    );
  }
}
