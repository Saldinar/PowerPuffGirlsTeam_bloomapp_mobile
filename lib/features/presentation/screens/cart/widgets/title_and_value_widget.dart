import 'package:flutter/material.dart';

class TitleAndValueWidget extends StatelessWidget {
  final String title;
  final String value;
  final TextStyle? textStyle;
  const TitleAndValueWidget({
    required this.title,
    required this.value,
    this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: theme.textTheme.titleSmall,
        ),
        Text(
          value,
          style: textStyle ?? theme.textTheme.titleSmall,
        ),
      ],
    );
  }
}
