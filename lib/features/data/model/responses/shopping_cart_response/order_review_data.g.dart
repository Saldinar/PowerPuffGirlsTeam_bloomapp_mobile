// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_review_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderReviewDataResponse _$OrderReviewDataResponseFromJson(
        Map<String, dynamic> json) =>
    OrderReviewDataResponse(
      display: json['display'] as bool?,
      billingAddress: json['billing_address'] == null
          ? null
          : AddressResponse.fromJson(
              json['billing_address'] as Map<String, dynamic>),
      isShippable: json['is_shippable'] as bool?,
      shippingAddress: json['shipping_address'] == null
          ? null
          : AddressResponse.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
      selectedPickupInStore: json['selected_pickup_in_store'] as bool?,
      pickupAddress: json['pickup_address'] == null
          ? null
          : AddressResponse.fromJson(
              json['pickup_address'] as Map<String, dynamic>),
      shippingMethod: json['shipping_method'] as String?,
      paymentMethod: json['payment_method'] as String?,
      customValues: json['custom_values'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_values'] as Map<String, dynamic>),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderReviewDataResponseToJson(
        OrderReviewDataResponse instance) =>
    <String, dynamic>{
      'display': instance.display,
      'billing_address': instance.billingAddress,
      'is_shippable': instance.isShippable,
      'shipping_address': instance.shippingAddress,
      'selected_pickup_in_store': instance.selectedPickupInStore,
      'pickup_address': instance.pickupAddress,
      'shipping_method': instance.shippingMethod,
      'payment_method': instance.paymentMethod,
      'custom_values': instance.customValues,
      'custom_properties': instance.customProperties,
    };
