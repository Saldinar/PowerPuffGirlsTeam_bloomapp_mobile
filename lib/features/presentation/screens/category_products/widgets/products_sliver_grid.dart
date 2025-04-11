import 'package:amamini_client/features/domain/entity/product/product_entity.dart';
import 'package:amamini_client/features/presentation/screens/home/widgets/featured_product_cart.dart';
import 'package:flutter/material.dart';

class ProductsSliverGrid extends StatelessWidget {
  final List<ProductEntity> products;
  const ProductsSliverGrid({
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.54,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) => FeaturedProductCart(
        product: products[index],
        textOverflow: TextOverflow.ellipsis,
      ),
    );
  }
}
