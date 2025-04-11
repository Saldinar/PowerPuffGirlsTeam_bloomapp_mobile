// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/product/default_picture_model.dart';

import 'package:equatable/equatable.dart';

class CategoryBreadcrumbEntity extends Equatable {
  final String? name;
  final String? seName;
  final int? numberOfProducts;
  final bool? includeInTopMenu;
  final List<String>? subCategories;
  final bool? haveSubCategories;
  final String? route;
  final DefaultPictureModelEntity? pictureModel;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const CategoryBreadcrumbEntity({
    required this.name,
    required this.seName,
    required this.numberOfProducts,
    required this.includeInTopMenu,
    required this.subCategories,
    required this.haveSubCategories,
    required this.route,
    required this.pictureModel,
    required this.id,
    required this.customProperties,
  });

  CategoryBreadcrumbEntity copyWith({
    String? name,
    String? seName,
    int? numberOfProducts,
    bool? includeInTopMenu,
    List<String>? subCategories,
    bool? haveSubCategories,
    String? route,
    DefaultPictureModelEntity? pictureModel,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return CategoryBreadcrumbEntity(
      name: name ?? this.name,
      seName: seName ?? this.seName,
      numberOfProducts: numberOfProducts ?? this.numberOfProducts,
      includeInTopMenu: includeInTopMenu ?? this.includeInTopMenu,
      subCategories: subCategories ?? this.subCategories,
      haveSubCategories: haveSubCategories ?? this.haveSubCategories,
      route: route ?? this.route,
      pictureModel: pictureModel ?? this.pictureModel,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      seName,
      numberOfProducts,
      includeInTopMenu,
      subCategories,
      haveSubCategories,
      route,
      pictureModel,
      id,
      customProperties,
    ];
  }
}
