import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/requests/catalog_request_body/catalog_request_body.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/catalog_params/catalog_params.dart';

extension CatalogRequestBodyMapper on CatalogParams {
  CatalogRequestBody toRequest() {
    return CatalogRequestBody(
      price: price ?? '',
      specificationOptionIds: specificationOptionIds ?? [],
      manufacturerIds: manufacturerIds ?? [],
      orderBy: orderBy ?? 0,
      viewMode: viewMode ?? '',
      pageIndex: pageIndex ?? 0,
      pageNumber: pageNumber ?? 0,
      pageSize: pageSize ?? 0,
      totalItems: totalItems ?? 0,
      totalPages: totalPages ?? 0,
      firstItem: firstItem ?? 0,
      lastItem: lastItem ?? 0,
      hasPreviousPage: hasPreviousPage ?? false,
      hasNextPage: hasNextPage ?? false,
      customProperties: customProperties?.toRequest(),
    );
  }
}
