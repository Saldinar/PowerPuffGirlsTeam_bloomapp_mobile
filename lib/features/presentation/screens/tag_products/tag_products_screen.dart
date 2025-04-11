import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/presentation/bloc/product/products_by_tag/products_by_tag_bloc.dart';
import 'package:amamini_client/features/presentation/screens/manufacturer_products/widgets/products_grid.dart';
import 'package:amamini_client/features/presentation/screens/tag_products/view_model/products_tags_view_model.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TagProductsScreen extends StatelessWidget {
  final String tagName;
  final String tagId;
  const TagProductsScreen({
    required this.tagName,
    required this.tagId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsByTagBloc(inject()),
      child: TagProductsView(tagId: tagId, tagName: tagName),
    );
  }
}

class TagProductsView extends StatefulWidget {
  final String tagName;
  final String tagId;
  const TagProductsView({
    required this.tagName,
    required this.tagId,
    super.key,
  });

  @override
  State<TagProductsView> createState() => _TagProductsViewState();
}

class _TagProductsViewState extends State<TagProductsView> {
  final _viewModel = TagProducts();
  final params = const CatalogParams();
  @override
  void initState() {
    super.initState();
    _viewModel.getProductsByTag(context, widget.tagId, params);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: widget.tagName),
      body: BlocBuilder<ProductsByTagBloc, ProductsByTagState>(
        builder: (context, state) {
          if (state is ProductsByTagLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductsByTagLoaded) {
            return Padding(
              padding: const EdgeInsets.all(Dimensions.unit),
              child: SingleChildScrollView(
                child: ProductsGrid(products: state.products),
              ),
            );
          } else if (state is ProductsByTagError) {
            return AppErrorWidget(message: state.message);
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
