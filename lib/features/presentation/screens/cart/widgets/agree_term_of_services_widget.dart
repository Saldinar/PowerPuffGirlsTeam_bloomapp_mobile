import 'package:amamini_client/features/presentation/screens/cart/cart_screen.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AgreeTermOfServiceWidget extends StatelessWidget {
  final AgreeTermOfServiceCallBack agreeTermOfService;
  final bool isAgree;
  const AgreeTermOfServiceWidget({
    required this.agreeTermOfService,
    required this.isAgree,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MainDecoratedContainer(
      child: Row(
        children: [
          Switch.adaptive(
            value: isAgree,
            onChanged: (newValue) => agreeTermOfService(newValue),
          ),
          const SizedBox(width: Dimensions.unit),
          Flexible(
            child: RichText(
              text: TextSpan(
                text:
                    'You agree with the terms of service and I agree to them unconditionally',
                style: theme.textTheme.titleSmall,
                children: [
                  TextSpan(
                    text: ' (read)',
                    style: theme.textTheme.titleSmall
                        ?.copyWith(color: AppColors.primary),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
