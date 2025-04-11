// ignore_for_file: sort_constructors_first
import 'package:amamini_client/config/navigation/routes.dart';
import 'package:amamini_client/features/domain/entity/category/category_entity.dart';
import 'package:amamini_client/features/presentation/screens/home/widgets/featured_product_cart.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const _containerHeight = 70.0;
const _containerWight = 107.0;

class CategoryCard extends StatelessWidget {
  final CategoryEntity categoryEntity;
  const CategoryCard({
    required this.categoryEntity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => _goToCategoryDetailsScreen(context),
      child: Container(
        width: double.infinity,
        height: _containerHeight,
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: Dimensions.unit0_25,
              spreadRadius: Dimensions.unit0_5,
              color: theme.shadowColor,
            ),
          ],
        ),
        child: Row(
          children: [
            _buildCategoryImage(),
            const SizedBox(width: Dimensions.unit),
            _buildCategoryTitle(theme),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }

  Text _buildCategoryTitle(ThemeData theme) {
    return Text(
      categoryEntity.name,
      style: theme.textTheme.titleSmall,
    );
  }

  ClipRRect _buildCategoryImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimensions.unit1_5),
      child: SizedBox(
        width: _containerWight,
        child: CustomFadeInImage(
          imageUrl: categoryEntity.pictureModel?.imageUrl ?? '',
        ),
      ),
    );
  }

  void _goToCategoryDetailsScreen(BuildContext context) {
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
}
