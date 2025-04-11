// ignore_for_file: sort_constructors_first

import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/domain/entity/category/category_entity.dart';
import 'package:amamini_client/features/presentation/screens/home/widgets/featured_product_cart.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePageCategoryCard extends StatefulWidget {
  final CategoryEntity category;
  const HomePageCategoryCard({
    required this.category,
    super.key,
  });

  @override
  State<HomePageCategoryCard> createState() => _HomePageCategoryCardState();
}

class _HomePageCategoryCardState extends State<HomePageCategoryCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => _goToCategoryDetailsScreen(widget.category),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.unit1_5),
          color: theme.primaryColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 2,
              color: theme.shadowColor,
            ),
          ],
        ),
        child: Column(
          children: [
            _buildCategoryImage(),
            const SizedBox(height: Dimensions.unit),
            _buildCategoryName(theme),
          ],
        ),
      ),
    );
  }

  void _goToCategoryDetailsScreen(CategoryEntity categoryEntity) {
    if (categoryEntity.haveSubCategories &&
        categoryEntity.subCategories.isNotEmpty) {
      context.pushNamed(
        Routes.subCategoriesPage.name,
        queryParameters: {
          'categoryId': '${categoryEntity.id}',
          'categoryImage': '${categoryEntity.pictureModel?.fullSizeImageUrl}',
          'categoryName': categoryEntity.name,
        },
      );
    } else {
      context.pushNamed(
        Routes.categoryProductsPage.name,
        queryParameters: {
          'categoryId': '${categoryEntity.id}',
          'categoryImage': '${categoryEntity.pictureModel?.fullSizeImageUrl}',
          'categoryName': categoryEntity.name,
        },
      );
    }
  }

  Widget _buildCategoryName(ThemeData theme) {
    return Text(
      widget.category.name,
      style: theme.textTheme.titleSmall,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  ClipRRect _buildCategoryImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimensions.unit1_5),
      child: CustomFadeInImage(
        imageUrl: widget.category.pictureModel?.imageUrl ?? '',
      ),
    );
  }
}
