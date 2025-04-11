// ignore_for_file: sort_constructors_first
import 'package:amamini_client/features/presentation/screens/category_products/category_products_view.dart';
import 'package:flutter/material.dart';

class CategoryProductsScreen extends StatelessWidget {
  final String categoryId;
  final String categoryImage;
  final String categoryName;
  const CategoryProductsScreen({
    required this.categoryId,
    required this.categoryImage,
    required this.categoryName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CategoryProductsView(
      categoryId: categoryId,
      categoryImage: categoryImage,
      categoryName: categoryName,
    );
  }
}
