import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/data/model/requests/search_products_request/search_products_request.dart';
import 'package:amamini_client/features/domain/entity/product/product_entity.dart';
import 'package:amamini_client/features/presentation/bloc/product/search_products/search_products_bloc.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchCatalogScreen extends StatefulWidget {
  const SearchCatalogScreen({super.key});

  @override
  State<SearchCatalogScreen> createState() => _SearchCatalogScreenState();
}

class _SearchCatalogScreenState extends State<SearchCatalogScreen> {
  final _searchController = TextEditingController();
  final _focusNode = FocusNode();
  SearchProductsRequest params = SearchProductsRequest(
    model: ModelRequest(),
    command: CommandRequest(),
  );
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: _buildAppBar(
        context,
        theme,
      ),
      body: BlocBuilder<SearchProductsBloc, SearchProductsState>(
        builder: (context, state) {
          if (state is SearchProductsLoading) {
            return const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(Dimensions.unit1_5),
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state is SearchProductsLoaded) {
            if (state.products.catalogProductsModel.noResultMessage != null) {
              final noResultMessage =
                  state.products.catalogProductsModel.noResultMessage;
              return Padding(
                padding: const EdgeInsets.all(Dimensions.unit2),
                child: Text(
                  noResultMessage!,
                  style: theme.textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
              );
            } else {
              final products = state.products.catalogProductsModel.products;
              return FoundedProductsList(products: products);
            }
          } else if (state is SearchProductsError) {
            return Padding(
              padding: const EdgeInsets.all(Dimensions.unit2),
              child: Text(
                state.message,
                style: theme.textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context, ThemeData theme) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {
            if (_searchController.text.isNotEmpty) {
              _searchController.text = '';
            } else {
              context.pop();
            }
          },
          icon: const Icon(Icons.close),
        ),
      ],
      title: TextField(
        focusNode: _focusNode,
        controller: _searchController,
        style:
            theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
        textInputAction: TextInputAction.search,
        onSubmitted: (value) {
          context.pushNamed(Routes.foundedProducts.name);
        },
        onChanged: (newValue) {
          params = params.copyWith(model: params.model.copyWith(q: newValue));
          context
              .read<SearchProductsBloc>()
              .add(SearchAllProductsEvent(params: params));
        },
        decoration: InputDecoration(
          hintText: S.of(context).searchInCatalog,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class FoundedProductsList extends StatelessWidget {
  final List<ProductEntity> products;
  const FoundedProductsList({
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView.builder(
      padding: const EdgeInsets.all(Dimensions.unit1_5),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.pushNamed(
              Routes.productDetailsPage.name,
              queryParameters: {
                'productId': '${products[index].id}',
              },
            );
          },
          child: SizedBox(
            height: Dimensions.unit5,
            width: double.infinity,
            child: Text(
              products[index].name,
              style: theme.textTheme.titleMedium,
            ),
          ),
        );
      },
    );
  }
}
