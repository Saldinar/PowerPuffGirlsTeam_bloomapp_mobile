import 'package:amamini_client/features/data/mappers/custom_properites/custom_properties_mapper.dart';
import 'package:amamini_client/features/data/model/responses/orders_response/recurring_order.dart';
import 'package:amamini_client/features/domain/entity/orders_entity/recurring_order.dart';

extension RecurringOrderMapper on RecurringOrderResponse {
  RecurringOrderEntity toEntity() {
    return RecurringOrderEntity(
      startDate: startDate,
      cycleInfo: cycleInfo,
      nextPayment: nextPayment,
      totalCycles: totalCycles,
      cyclesRemaining: cyclesRemaining,
      initialOrderId: initialOrderId,
      canRetryLastPayment: canRetryLastPayment,
      initialOrderNumber: initialOrderNumber,
      canCancel: canCancel,
      id: id,
      customProperties: customProperties?.toEntity(),
    );
  }
}
