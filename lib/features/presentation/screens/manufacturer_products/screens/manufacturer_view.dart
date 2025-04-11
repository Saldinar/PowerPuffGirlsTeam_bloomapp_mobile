import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/presentation/bloc/product/manufacturer_products/manufacturer_products_bloc.dart';
import 'package:amamini_client/features/presentation/screens/manufacturer_products/view_model/manufacturer_products_view_model.dart';
import 'package:amamini_client/features/presentation/screens/manufacturer_products/widgets/products_grid.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ManufacturerProductsView extends StatefulWidget {
  final String manufacturerName;
  final String manufacturerId;
  const ManufacturerProductsView({
    required this.manufacturerName,
    required this.manufacturerId,
    super.key,
  });

  @override
  State<ManufacturerProductsView> createState() =>
      _ManufacturerProductsViewState();
}

class _ManufacturerProductsViewState extends State<ManufacturerProductsView> {
  final _viewModel = ManufacturerProductsViewModel();
  CatalogParams params = const CatalogParams();
  @override
  void initState() {
    _viewModel.getManufacturerProducts(context, widget.manufacturerId, params);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManufacturerProductsBloc, ManufacturerProductsState>(
      builder: (context, state) {
        if (state is ManufacturerProductsLoading) {
          return const DefaultAppBarLoadingPlaceholder();
        } else if (state is ManufacturerProductsLoaded) {
          return Scaffold(
            appBar: MainAppBar(
              title: widget.manufacturerName,
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () => _goToSearchCatalogPage(context),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.unit),
              child: ListView(
                children: [
                  const SizedBox(height: Dimensions.unit),
                  ProductsGrid(products: state.products),
                ],
              ),
            ),
          );
        } else if (state is ManufacturerProductsError) {
          return Scaffold(
            body: AppErrorWidget(message: state.message),
          );
        }
        return const Scaffold(body: SizedBox.shrink());
      },
    );
  }

  void _goToSearchCatalogPage(BuildContext context) {
    context.pushNamed(
      Routes.searchCatalogPage.name,
      queryParameters: {
        'manufacturerId': widget.manufacturerId,
      },
    );
  }
}
