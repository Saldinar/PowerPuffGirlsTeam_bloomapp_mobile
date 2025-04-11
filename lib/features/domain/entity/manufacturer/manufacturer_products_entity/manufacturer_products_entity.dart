// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/catalog_products_model.dart';
import 'package:equatable/equatable.dart';

class CatalogProductEntity extends Equatable {
  final String templateViewPath;
  final CatalogProductsModelEntity catalogProductsModel;

  const CatalogProductEntity({
    required this.templateViewPath,
    required this.catalogProductsModel,
  });

  CatalogProductEntity copyWith({
    String? templateViewPath,
    CatalogProductsModelEntity? catalogProductsModel,
  }) {
    return CatalogProductEntity(
      templateViewPath: templateViewPath ?? this.templateViewPath,
      catalogProductsModel: catalogProductsModel ?? this.catalogProductsModel,
    );
  }

  @override
  List<Object?> get props => [templateViewPath, catalogProductsModel];
}
