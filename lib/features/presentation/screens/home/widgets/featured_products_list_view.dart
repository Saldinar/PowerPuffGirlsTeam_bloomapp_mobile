// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/product_entity.dart';
import 'package:amamini_client/features/presentation/screens/home/widgets/featured_product_cart.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

const _productsListHeight = 350.0;

class FeaturedProductsList extends StatelessWidget {
  final List<ProductEntity> featuredProducts;
  const FeaturedProductsList({
    required this.featuredProducts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _productsTitle(context, theme),
        _buildProductList(),
      ],
    );
  }

  Padding _productsTitle(BuildContext context, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.unit),
      child: Text(
        S.of(context).featuredProducts,
        style:
            theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }

  SizedBox _buildProductList() {
    return SizedBox(
      height: _productsListHeight,
      child: ListView.builder(
        itemCount: featuredProducts.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.unit),
        itemBuilder: (context, index) => _buildFeaturedProductCard(context),
      ),
    );
  }

  Padding _buildFeaturedProductCard(BuildContext context) {
    final wight = MediaQuery.of(context).size.width * 0.46;
    return Padding(
      padding: const EdgeInsets.only(right: Dimensions.unit),
      child: FeaturedProductCart(
        wight: wight,
        product: featuredProducts.first,
      ),
    );
  }
}
