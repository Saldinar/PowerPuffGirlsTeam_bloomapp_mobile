import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';
import 'package:amamini_client/features/presentation/screens/home/widgets/featured_product_cart.dart';
import 'package:amamini_client/features/presentation/widgets/filter_value_row_widget.dart';
import 'package:amamini_client/features/presentation/widgets/main_bottom_sheet.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CatalogProductsSliverAppBar extends StatelessWidget {
  final CatalogParams params;
  final String image;
  final String categoryName;
  final Widget widget;
  final int? totalItems;
  final String categoryId;
  const CatalogProductsSliverAppBar({
    required this.widget,
    required this.image,
    required this.params,
    required this.categoryName,
    required this.categoryId,
    super.key,
    this.totalItems,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(context, theme),
          if (totalItems != null) _buildTotalItemsTitle(context, theme),
          const SliverGapBox(height: Dimensions.unit),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: Dimensions.unit),
            sliver: widget,
          ),
        ],
      ),
    );
  }

  SliverAppBar _buildSliverAppBar(
    BuildContext context,
    ThemeData theme,
  ) {
    final height = MediaQuery.of(context).size.height;
    return SliverAppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () => _searchModalBottomSheet(context),
          icon: const Icon(Icons.sort),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_alt),
        ),
      ],
      backgroundColor: theme.scaffoldBackgroundColor,
      expandedHeight: height * 0.30,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: _buildAppBarTitle(theme),
        background: Column(
          children: [
            CustomFadeInImage(imageUrl: image),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _searchModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => MainBottomSheet(
        child: Column(
          children: _buildFilterOptions(context),
        ),
      ),
    );
  }

  List<Widget> _buildFilterOptions(BuildContext context) {
    final options = [
      'Position',
      'Name: A to Z',
      'Name: Z to A',
      'Price: Low to High',
      'Price: High to Low',
      'Created on',
    ];
    return options
        .map(
          (title) => Column(
            children: [
              FilterValueRow(
                title: title,
                onTap: () => context.pop(),
              ),
              const SizedBox(height: Dimensions.unit2),
            ],
          ),
        )
        .toList();
  }

  Text _buildAppBarTitle(ThemeData theme) {
    return Text(
      categoryName,
      style: theme.textTheme.titleMedium,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildTotalItemsTitle(
    BuildContext context,
    ThemeData theme,
  ) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.unit),
        child: Text(
          S.of(context).countItems(totalItems ?? 0),
          style: theme.textTheme.titleSmall,
          textAlign: TextAlign.end,
        ),
      ),
    );
  }
}
