import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/responses/orders_response/order.dart';
import 'package:amamini_client/features/domain/entity/orders_entity/order.dart';

extension OrderMapper on OrderResponse {
  OrderEntity toEntity() {
    return OrderEntity(
      customOrderNumber: customOrderNumber,
      orderTotal: orderTotal,
      isReturnRequestAllowed: isReturnRequestAllowed,
      orderStatusEnum: orderStatusEnum,
      orderStatus: orderStatus,
      paymentStatus: paymentStatus,
      shippingStatus: shippingStatus,
      createdOn: createdOn,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}
