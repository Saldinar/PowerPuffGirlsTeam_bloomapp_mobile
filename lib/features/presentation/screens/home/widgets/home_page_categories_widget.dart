// ignore_for_file: sort_constructors_first
import 'package:amamini_client/features/domain/entity/category/category_entity.dart';
import 'package:amamini_client/features/presentation/screens/home/widgets/home_page_categories_list_veiw.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class HomePageCategoriesWidget extends StatefulWidget {
  final List<CategoryEntity> categories;
  const HomePageCategoriesWidget({
    required this.categories,
    super.key,
  });

  @override
  State<HomePageCategoriesWidget> createState() =>
      _HomePageCategoriesWidgetState();
}

class _HomePageCategoriesWidgetState extends State<HomePageCategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPopularCategoriesTitle(theme),
        const SizedBox(height: Dimensions.unit),
        PopularCategoriesList(categories: widget.categories),
      ],
    );
  }

  Padding _buildPopularCategoriesTitle(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.unit),
      child: Text(
        S.of(context).popularCategories,
        style:
            theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
