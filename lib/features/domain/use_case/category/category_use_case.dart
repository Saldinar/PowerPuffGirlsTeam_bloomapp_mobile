// ignore_for_file: sort_constructors_first

import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/category/category_entity.dart';
import 'package:amamini_client/features/domain/repository/category_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
final class CategoryUseCase {
  final CategoryRepository _categoryRepository;
  CategoryUseCase({required CategoryRepository categoryRepository})
      : _categoryRepository = categoryRepository;

  Future<Either<Failure, List<CategoryEntity>>> getHomePageCategories() async {
    return await _categoryRepository.getHomePageCategories();
  }

  Future<Either<Failure, List<CategoryEntity>>> getCatalogRoot() async {
    return await _categoryRepository.getCatalogRoot();
  }

  Future<Either<Failure, List<CategoryEntity>>> getSubCategories(
    int categoryId,
  ) async {
    return await _categoryRepository.getSubCategories(categoryId);
  }
}
