import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recurring_order.g.dart';

@JsonSerializable()
class RecurringOrderResponse {
  @JsonKey(name: 'start_date')
  final String? startDate;
  @JsonKey(name: 'cycle_info')
  final String? cycleInfo;
  @JsonKey(name: 'next_payment')
  final String? nextPayment;
  @JsonKey(name: 'total_cycles')
  final int? totalCycles;
  @JsonKey(name: 'cycles_remaining')
  final int? cyclesRemaining;
  @JsonKey(name: 'initial_order_id')
  final int? initialOrderId;
  @JsonKey(name: 'can_retry_last_payment')
  final bool? canRetryLastPayment;
  @JsonKey(name: 'initial_order_number')
  final String? initialOrderNumber;
  @JsonKey(name: 'can_cancel')
  final bool? canCancel;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const RecurringOrderResponse({
    this.startDate,
    this.cycleInfo,
    this.nextPayment,
    this.totalCycles,
    this.cyclesRemaining,
    this.initialOrderId,
    this.canRetryLastPayment,
    this.initialOrderNumber,
    this.canCancel,
    this.id,
    this.customProperties,
  });

  factory RecurringOrderResponse.fromJson(Map<String, dynamic> json) {
    return _$RecurringOrderResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RecurringOrderResponseToJson(this);
}
