import 'package:amamini_client/features/presentation/bloc/product/search_products/search_products_bloc.dart';
import 'package:amamini_client/features/presentation/screens/manufacturer_products/widgets/products_grid.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoundedProductsScreen extends StatelessWidget {
  const FoundedProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(title: 'title'),
      body: BlocBuilder<SearchProductsBloc, SearchProductsState>(
        builder: (context, state) {
          if (state is SearchProductsLoaded) {
            final products = state.products;
            return SingleChildScrollView(
              padding: const EdgeInsets.all(Dimensions.unit),
              child: ProductsGrid(products: products),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
