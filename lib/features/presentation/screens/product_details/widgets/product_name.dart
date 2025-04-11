import 'package:flutter/material.dart';

class ProductName extends StatelessWidget {
  final String name;
  const ProductName({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Flexible(
      child: Text(
        name,
        style: theme.textTheme.titleLarge,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
