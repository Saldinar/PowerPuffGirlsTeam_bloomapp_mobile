// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) =>
    OrderResponse(
      customOrderNumber: json['custom_order_number'] as String?,
      orderTotal: json['order_total'] as String?,
      isReturnRequestAllowed: json['is_return_request_allowed'] as bool?,
      orderStatusEnum: (json['order_status_enum'] as num?)?.toInt(),
      orderStatus: json['order_status'] as String?,
      paymentStatus: json['payment_status'] as String?,
      shippingStatus: json['shipping_status'] as String?,
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderResponseToJson(OrderResponse instance) =>
    <String, dynamic>{
      'custom_order_number': instance.customOrderNumber,
      'order_total': instance.orderTotal,
      'is_return_request_allowed': instance.isReturnRequestAllowed,
      'order_status_enum': instance.orderStatusEnum,
      'order_status': instance.orderStatus,
      'payment_status': instance.paymentStatus,
      'shipping_status': instance.shippingStatus,
      'created_on': instance.createdOn?.toIso8601String(),
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
