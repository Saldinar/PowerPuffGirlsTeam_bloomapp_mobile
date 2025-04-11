import 'package:flutter/material.dart';

class AddressInfoText extends StatelessWidget {
  final String? title;
  final String value;

  const AddressInfoText({
    required this.value,
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      title != null ? '$title: $value' : value,
      style: theme.textTheme.titleSmall?.copyWith(
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
