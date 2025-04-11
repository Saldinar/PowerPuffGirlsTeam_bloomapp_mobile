// ignore_for_file: sort_constructors_first

import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

const _imageSize = 100.0;

class AppErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onPressed;
  const AppErrorWidget({
    required this.message,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: _imageSize,
            width: _imageSize,
            child: Image.asset(AppAssets.errorImage),
          ),
          const SizedBox(height: Dimensions.unit),
          Text(message, style: theme.textTheme.titleSmall),
          const SizedBox(height: Dimensions.unit),
          onPressed != null
              ? MainElevatedButton(title: 'Try again', onPressed: onPressed)
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
