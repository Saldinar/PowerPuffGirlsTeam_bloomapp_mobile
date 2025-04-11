// ignore_for_file: sort_constructors_first, always_put_required_named_parameters_first

import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/category/sub_categories/sub_categories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubCategoriesScreen extends StatelessWidget {
  final String categoryId;
  const SubCategoriesScreen({required this.categoryId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubCategoriesBloc(inject()),
      child: const SubCategoriesView(),
    );
  }
}

class SubCategoriesView extends StatelessWidget {
  const SubCategoriesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
    // return CatalogProductsSliverAppBar(
    //   image: '',
    //   categoryName: '',
    //   widget: SliverList(
    //     delegate: SliverChildBuilderDelegate(
    //       childCount: 50,
    //       (context, index) => ListTile(
    //         title: Text('Sub category name #$index'),
    //       ),
    //     ),
    //   ),
    // );
  }
}
