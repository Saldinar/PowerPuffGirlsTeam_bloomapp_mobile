import 'package:flutter/material.dart';

class FilterValueRow extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const FilterValueRow({
    required this.onTap,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: theme.textTheme.titleMedium,
          ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
