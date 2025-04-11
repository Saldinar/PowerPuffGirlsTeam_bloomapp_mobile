import 'package:amamini_client/features/presentation/bloc/category/sub_categories/sub_categories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubCategoriesViewModel {
  void getSubCategories(BuildContext context, String categoryId) {
    context
        .read<SubCategoriesBloc>()
        .add(GetSubCategoriesEvent(categoryId: int.parse(categoryId)));
  }
}
