// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersResponse _$OrdersResponseFromJson(Map<String, dynamic> json) =>
    OrdersResponse(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      recurringOrders: (json['recurring_orders'] as List<dynamic>?)
          ?.map(
              (e) => RecurringOrderResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      recurringPaymentErrors:
          (json['recurring_payment_errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrdersResponseToJson(OrdersResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'recurring_orders': instance.recurringOrders,
      'recurring_payment_errors': instance.recurringPaymentErrors,
      'custom_properties': instance.customProperties,
    };
