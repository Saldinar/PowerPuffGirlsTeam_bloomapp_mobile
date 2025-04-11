import 'package:amamini_client/features/domain/entity/category/category_entity.dart';
import 'package:amamini_client/features/presentation/screens/catalog/widgets/category_card_widget.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final List<CategoryEntity> categories;
  const CategoriesList({
    required this.categories,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).categories,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: Dimensions.unit1_5),
        ListView.separated(
          shrinkWrap: true,
          itemCount: categories.length,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) =>
              const SizedBox(height: Dimensions.unit),
          itemBuilder: (context, index) => CategoryCard(
            categoryEntity: categories[index],
          ),
        ),
      ],
    );
  }
}
