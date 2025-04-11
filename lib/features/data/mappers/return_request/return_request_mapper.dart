import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/responses/return_request/item.dart';
import 'package:amamini_client/features/data/model/responses/return_request/return_request_response.dart';
import 'package:amamini_client/features/domain/entity/return_request/item.dart';
import 'package:amamini_client/features/domain/entity/return_request/return_request_entity.dart';

extension ReturnRequestMapper on ReturnRequestResponse {
  ReturnRequestEntity toEntity() {
    return ReturnRequestEntity(
      items: items?.map((item) => item.toEntity()).toList(),
      customProperties: customProperties?.toEntity(),
    );
  }
}

extension ReturnRequestItemMapper on ReturnRequestItemResponse {
  ReturnRequestItemEntity toEntity() {
    return ReturnRequestItemEntity(
      customNumber: customNumber,
      returnRequestStatus: returnRequestStatus,
      productId: productId,
      productName: productName,
      productSeName: productSeName,
      quantity: quantity,
      returnReason: returnReason,
      returnAction: returnAction,
      comments: comments,
      uploadedFileGuid: uploadedFileGuid,
      createdOn: createdOn,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}
