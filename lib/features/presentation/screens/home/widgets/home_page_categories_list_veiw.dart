// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/category/category_entity.dart';
import 'package:amamini_client/features/presentation/screens/home/widgets/home_page_category_card.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

const _categoriesListHeight = 150.0;

class PopularCategoriesList extends StatelessWidget {
  final List<CategoryEntity> categories;
  const PopularCategoriesList({
    required this.categories,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _categoriesListHeight,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.unit1_5),
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.only(right: Dimensions.unit1_5),
            child: HomePageCategoryCard(category: category),
          );
        },
      ),
    );
  }
}
