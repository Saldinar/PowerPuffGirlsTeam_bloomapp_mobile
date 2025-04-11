import 'package:amamini_client/features/domain/entity/orders_entity/order.dart';
import 'package:amamini_client/features/domain/entity/orders_entity/recurring_order.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class OrdersEntity extends Equatable {
  final List<OrderEntity>? orders;
  final List<RecurringOrderEntity>? recurringOrders;
  final List<String>? recurringPaymentErrors;
  final CustomPropertiesEntity? customProperties;

  const OrdersEntity({
    this.orders,
    this.recurringOrders,
    this.recurringPaymentErrors,
    this.customProperties,
  });

  OrdersEntity copyWith({
    List<OrderEntity>? orders,
    List<RecurringOrderEntity>? recurringOrders,
    List<String>? recurringPaymentErrors,
    CustomPropertiesEntity? customProperties,
  }) {
    return OrdersEntity(
      orders: orders ?? this.orders,
      recurringOrders: recurringOrders ?? this.recurringOrders,
      recurringPaymentErrors:
          recurringPaymentErrors ?? this.recurringPaymentErrors,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      orders,
      recurringOrders,
      recurringPaymentErrors,
      customProperties,
    ];
  }
}
