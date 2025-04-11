import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/presentation/bloc/product/category_products/category_products_bloc.dart';
import 'package:amamini_client/features/presentation/screens/category_products/view_model/view_model.dart';
import 'package:amamini_client/features/presentation/screens/category_products/widgets/products_sliver_grid.dart';
import 'package:amamini_client/features/presentation/widgets/catalog_products_sliver_app_bar.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryProductsView extends StatefulWidget {
  final String categoryId;
  final String categoryImage;
  final String categoryName;
  const CategoryProductsView({
    required this.categoryId,
    required this.categoryImage,
    required this.categoryName,
    super.key,
  });

  @override
  State<CategoryProductsView> createState() => _CategoryProductsViewState();
}

class _CategoryProductsViewState extends State<CategoryProductsView> {
  final _viewModel = CategoryProductsViewModel();
  CatalogParams params = const CatalogParams();
  @override
  void initState() {
    super.initState();
    _viewModel.getCategoryProducts(context, widget.categoryId, params);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryProductsBloc, CategoryProductsState>(
      builder: (context, state) {
        if (state is CategoryProductsLoading) {
          return const DefaultAppBarLoadingPlaceholder();
        } else if (state is CategoryProductsLoaded) {
          final catalogProducts = state.catalogProducts.catalogProductsModel;
          return CatalogProductsSliverAppBar(
            params: params,
            categoryId: widget.categoryId,
            image: widget.categoryImage,
            categoryName: widget.categoryName,
            widget: ProductsSliverGrid(products: catalogProducts.products),
          );
        } else if (state is CategoryProductsError) {
          return AppErrorWidget(message: state.message);
        }
        return const SizedBox.shrink();
      },
    );
  }
}
