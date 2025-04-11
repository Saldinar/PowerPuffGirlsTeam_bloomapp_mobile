// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product_details/product_details_model.dart';
import 'package:equatable/equatable.dart';

class ProductDetailsEntity extends Equatable {
  final String? productTemplateViewPath;
  final ProductDetailsModelEntity productDetailsModel;

  const ProductDetailsEntity({
    required this.productTemplateViewPath,
    required this.productDetailsModel,
  });

  ProductDetailsEntity copyWith({
    String? productTemplateViewPath,
    ProductDetailsModelEntity? productDetailsModel,
  }) {
    return ProductDetailsEntity(
      productTemplateViewPath:
          productTemplateViewPath ?? this.productTemplateViewPath,
      productDetailsModel: productDetailsModel ?? this.productDetailsModel,
    );
  }

  @override
  List<Object?> get props {
    return [
      productTemplateViewPath,
      productDetailsModel,
    ];
  }
}
