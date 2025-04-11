import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/presentation/bloc/product/category_products/category_products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryProductsViewModel {
  void getCategoryProducts(
    BuildContext context,
    String categoryId,
    CatalogParams params,
  ) {
    context.read<CategoryProductsBloc>().add(
          GetCategoryProductsEvent(
            categoryId: int.parse(categoryId),
            params: params,
          ),
        );
  }
}
