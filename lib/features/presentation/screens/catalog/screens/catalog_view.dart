import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/presentation/bloc/category/catalog_root/catalog_root_bloc.dart';
import 'package:amamini_client/features/presentation/screens/catalog/view_model/catalog_view_model.dart';
import 'package:amamini_client/features/presentation/screens/catalog/widgets/categories_list.dart';
import 'package:amamini_client/features/presentation/screens/catalog/widgets/manufacturers_list_widget.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CatalogView extends StatefulWidget {
  const CatalogView({
    super.key,
  });

  @override
  State<CatalogView> createState() => _CatalogViewState();
}

class _CatalogViewState extends State<CatalogView> {
  final _viewModel = CatalogViewModel();
  @override
  void initState() {
    super.initState();
    _viewModel
      ..getCatalogRoot(context)
      ..getAllManufacturers(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: S.of(context).catalog,
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed(Routes.searchCatalogPage.name);
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<CatalogRootBloc, CatalogRootState>(
        builder: (context, state) {
          if (state is CatalogRootLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CatalogRootLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.unit,
                vertical: Dimensions.unit1_5,
              ),
              child: ListView(
                children: [
                  CategoriesList(categories: state.categories),
                  const SizedBox(height: Dimensions.unit1_5),
                  const ManufacturersListWidget(),
                ],
              ),
            );
          } else if (state is CatalogRootError) {
            return AppErrorWidget(
              message: state.message,
              onPressed: () {
                _viewModel
                  ..getCatalogRoot(context)
                  ..getAllManufacturers(context);
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
