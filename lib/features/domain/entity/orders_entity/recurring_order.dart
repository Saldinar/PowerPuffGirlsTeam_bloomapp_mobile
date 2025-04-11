import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class RecurringOrderEntity extends Equatable {
  final String? startDate;
  final String? cycleInfo;
  final String? nextPayment;
  final int? totalCycles;
  final int? cyclesRemaining;
  final int? initialOrderId;
  final bool? canRetryLastPayment;
  final String? initialOrderNumber;
  final bool? canCancel;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const RecurringOrderEntity({
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

  RecurringOrderEntity copyWith({
    String? startDate,
    String? cycleInfo,
    String? nextPayment,
    int? totalCycles,
    int? cyclesRemaining,
    int? initialOrderId,
    bool? canRetryLastPayment,
    String? initialOrderNumber,
    bool? canCancel,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return RecurringOrderEntity(
      startDate: startDate ?? this.startDate,
      cycleInfo: cycleInfo ?? this.cycleInfo,
      nextPayment: nextPayment ?? this.nextPayment,
      totalCycles: totalCycles ?? this.totalCycles,
      cyclesRemaining: cyclesRemaining ?? this.cyclesRemaining,
      initialOrderId: initialOrderId ?? this.initialOrderId,
      canRetryLastPayment: canRetryLastPayment ?? this.canRetryLastPayment,
      initialOrderNumber: initialOrderNumber ?? this.initialOrderNumber,
      canCancel: canCancel ?? this.canCancel,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      startDate,
      cycleInfo,
      nextPayment,
      totalCycles,
      cyclesRemaining,
      initialOrderId,
      canRetryLastPayment,
      initialOrderNumber,
      canCancel,
      id,
      customProperties,
    ];
  }
}
