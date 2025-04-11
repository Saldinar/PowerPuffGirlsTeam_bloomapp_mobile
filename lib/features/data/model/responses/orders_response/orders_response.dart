import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/orders_response/order.dart';
import 'package:amamini_client/features/data/model/responses/orders_response/recurring_order.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orders_response.g.dart';

@JsonSerializable()
class OrdersResponse {
  final List<OrderResponse>? orders;
  @JsonKey(name: 'recurring_orders')
  final List<RecurringOrderResponse>? recurringOrders;
  @JsonKey(name: 'recurring_payment_errors')
  final List<String>? recurringPaymentErrors;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const OrdersResponse({
    this.orders,
    this.recurringOrders,
    this.recurringPaymentErrors,
    this.customProperties,
  });

  factory OrdersResponse.fromJson(Map<String, dynamic> json) {
    return _$OrdersResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrdersResponseToJson(this);
}
