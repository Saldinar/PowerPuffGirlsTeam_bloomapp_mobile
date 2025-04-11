import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrdinaryButton extends StatelessWidget {
  const OrdinaryButton({
    required this.title,
    super.key,
    this.icon,
    this.onPressed,
  });

  final String title;
  final SvgPicture? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 1,
        backgroundColor: AppColors.primary,
        surfaceTintColor: AppColors.black.withOpacity(.2),
        disabledBackgroundColor: AppColors.primary.withOpacity(0.5),
        overlayColor: AppColors.black.withOpacity(0.1),
        padding: const EdgeInsets.all(Dimensions.unit1_5 + 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.svg.icBack.svg(
                  width: Dimensions.unit3,
                  height: Dimensions.unit3,
                  package: 'averspay_flutter_sdk',
                ),
                const SizedBox(width: Dimensions.unit),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          : Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
    );
  }
}
