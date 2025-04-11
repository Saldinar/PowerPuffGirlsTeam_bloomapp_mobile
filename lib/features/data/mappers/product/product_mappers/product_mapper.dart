import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/default_picture_model/default_picture_model_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/product_price_mapper/product_price_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/product_specification_model_mapper/product_specification_model_mapper.dart';
import 'package:amamini_client/features/data/mappers/product/review_overview_model_mapper.dart/review_overview_model_mapper.dart';
import 'package:amamini_client/features/data/model/responses/product/product_response.dart';
import 'package:amamini_client/features/domain/entity/product/product_entity.dart';

extension ProductMapper on ProductResponse {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      name: name,
      shortDescription: shortDescription,
      fullDescription: fullDescription,
      seName: seName,
      sku: sku,
      productType: productType,
      markAsNew: markAsNew,
      productPrice: productPrice.toEntity(),
      defaultPictureModel: defaultPictureModel!
          .map((pictureModel) => pictureModel.toEntity())
          .toList(),
      productSpecificationModel: productSpecificationModel?.toEntity(),
      reviewOverviewModel: reviewOverviewModel?.toEntity(),
      customProperties: customProperties!.toEntity(),
    );
  }
}
