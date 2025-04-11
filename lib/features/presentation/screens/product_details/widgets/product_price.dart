import 'package:amamini_client/features/domain/entity/product_details/product_details_entity.dart';
import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  final ProductDetailsEntity details;
  const ProductPrice({
    required this.details,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      details.productDetailsModel.productPrice?.price ?? '',
      style: theme.textTheme.titleLarge,
    );
  }
}
