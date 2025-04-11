import 'package:amamini_client/features/domain/entity/product_details/product_details_entity.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class PriceAndShippingRow extends StatelessWidget {
  final ProductDetailsEntity details;
  const PriceAndShippingRow({
    required this.details,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sku: ${details.productDetailsModel.sku}',
          style: theme.textTheme.titleSmall,
        ),
        if (details.productDetailsModel.isFreeShipping!)
          Container(
            height: Dimensions.unit5,
            decoration: BoxDecoration(
              color: theme.shadowColor,
              borderRadius: BorderRadius.circular(Dimensions.unit),
              boxShadow: [
                BoxShadow(
                  spreadRadius: Dimensions.unit0_25,
                  blurRadius: Dimensions.unit0_5,
                  color: theme.shadowColor,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(Dimensions.unit),
              child: Row(
                children: [
                  const Icon(Icons.local_shipping),
                  Text(S.of(context).freeShipping),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
