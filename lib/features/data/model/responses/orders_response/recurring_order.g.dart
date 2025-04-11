// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecurringOrderResponse _$RecurringOrderResponseFromJson(
        Map<String, dynamic> json) =>
    RecurringOrderResponse(
      startDate: json['start_date'] as String?,
      cycleInfo: json['cycle_info'] as String?,
      nextPayment: json['next_payment'] as String?,
      totalCycles: (json['total_cycles'] as num?)?.toInt(),
      cyclesRemaining: (json['cycles_remaining'] as num?)?.toInt(),
      initialOrderId: (json['initial_order_id'] as num?)?.toInt(),
      canRetryLastPayment: json['can_retry_last_payment'] as bool?,
      initialOrderNumber: json['initial_order_number'] as String?,
      canCancel: json['can_cancel'] as bool?,
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecurringOrderResponseToJson(
        RecurringOrderResponse instance) =>
    <String, dynamic>{
      'start_date': instance.startDate,
      'cycle_info': instance.cycleInfo,
      'next_payment': instance.nextPayment,
      'total_cycles': instance.totalCycles,
      'cycles_remaining': instance.cyclesRemaining,
      'initial_order_id': instance.initialOrderId,
      'can_retry_last_payment': instance.canRetryLastPayment,
      'initial_order_number': instance.initialOrderNumber,
      'can_cancel': instance.canCancel,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
