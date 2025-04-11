import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_products_entity/manufacturer_products_entity.dart';
import 'package:amamini_client/features/presentation/screens/home/widgets/featured_product_cart.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class ProductsGrid extends StatelessWidget {
  final CatalogProductEntity products;
  const ProductsGrid({
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          S.of(context).countItems(products.catalogProductsModel.totalItems),
          textAlign: TextAlign.end,
          style: theme.textTheme.titleSmall,
        ),
        const SizedBox(height: Dimensions.unit),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: products.catalogProductsModel.products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.54,
          ),
          itemBuilder: (context, index) {
            final product = products.catalogProductsModel.products[index];
            return FeaturedProductCart(
              product: product,
              textOverflow: TextOverflow.ellipsis,
            );
          },
        ),
      ],
    );
  }
}
