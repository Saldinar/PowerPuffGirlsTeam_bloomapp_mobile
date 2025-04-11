import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/mappers/order/order_mapper.dart';
import 'package:amamini_client/features/data/mappers/order/recurring_order_mapper.dart';
import 'package:amamini_client/features/data/model/responses/orders_response/orders_response.dart';
import 'package:amamini_client/features/domain/entity/orders_entity/orders_entity.dart';

extension OrdersMapper on OrdersResponse {
  OrdersEntity toEntity() {
    return OrdersEntity(
      orders: orders?.map((order) => order.toEntity()).toList(),
      recurringOrders: recurringOrders
          ?.map((recurringOrder) => recurringOrder.toEntity())
          .toList(),
      recurringPaymentErrors: recurringPaymentErrors,
      customProperties: customProperties?.toEntity(),
    );
  }
}
