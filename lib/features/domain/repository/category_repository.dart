import 'package:amamini_client/core/resources/dio_failure.dart';
import 'package:amamini_client/features/domain/entity/category/category_entity.dart';
import 'package:dartz/dartz.dart';

abstract interface class CategoryRepository {
  Future<Either<Failure, List<CategoryEntity>>> getHomePageCategories();
  Future<Either<Failure, List<CategoryEntity>>> getCatalogRoot();
  Future<Either<Failure, List<CategoryEntity>>> getSubCategories(
    int categoryId,
  );
}
