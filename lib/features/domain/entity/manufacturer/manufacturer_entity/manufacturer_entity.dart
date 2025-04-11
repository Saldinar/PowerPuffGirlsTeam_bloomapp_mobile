// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/catalog_products_model.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/default_picture_model.dart';
import 'package:amamini_client/features/domain/entity/product/product_entity.dart';
import 'package:equatable/equatable.dart';

class ManufacturerEntity extends Equatable {
  final String name;
  final String? description;
  final String? metaKeywords;
  final String? metaDescription;
  final String? metaTitle;
  final String seName;
  final DefaultPictureModelEntity pictureModel;
  final List<ProductEntity> featuredProducts;
  final CatalogProductsModelEntity catalogProductsModel;
  final int id;
  final CustomPropertiesEntity customProperties;

  const ManufacturerEntity({
    required this.seName,
    required this.pictureModel,
    required this.featuredProducts,
    required this.catalogProductsModel,
    required this.id,
    required this.customProperties,
    required this.name,
    this.description,
    this.metaKeywords,
    this.metaDescription,
    this.metaTitle,
  });

  ManufacturerEntity copyWith({
    String? name,
    String? description,
    String? metaKeywords,
    String? metaDescription,
    String? metaTitle,
    String? seName,
    DefaultPictureModelEntity? pictureModel,
    List<ProductEntity>? featuredProducts,
    CatalogProductsModelEntity? catalogProductsModel,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return ManufacturerEntity(
      name: name ?? this.name,
      description: description ?? this.description,
      metaKeywords: metaKeywords ?? this.metaKeywords,
      metaDescription: metaDescription ?? this.metaDescription,
      metaTitle: metaTitle ?? this.metaTitle,
      seName: seName ?? this.seName,
      pictureModel: pictureModel ?? this.pictureModel,
      featuredProducts: featuredProducts ?? this.featuredProducts,
      catalogProductsModel: catalogProductsModel ?? this.catalogProductsModel,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      description,
      metaKeywords,
      metaDescription,
      metaTitle,
      seName,
      pictureModel,
      featuredProducts,
      catalogProductsModel,
      id,
      customProperties,
    ];
  }
}
