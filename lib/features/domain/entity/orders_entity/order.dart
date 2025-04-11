import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class OrderEntity extends Equatable {
  final String? customOrderNumber;
  final String? orderTotal;
  final bool? isReturnRequestAllowed;
  final int? orderStatusEnum;
  final String? orderStatus;
  final String? paymentStatus;
  final String? shippingStatus;
  final DateTime? createdOn;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const OrderEntity({
    this.customOrderNumber,
    this.orderTotal,
    this.isReturnRequestAllowed,
    this.orderStatusEnum,
    this.orderStatus,
    this.paymentStatus,
    this.shippingStatus,
    this.createdOn,
    this.id,
    this.customProperties,
  });

  OrderEntity copyWith({
    String? customOrderNumber,
    String? orderTotal,
    bool? isReturnRequestAllowed,
    int? orderStatusEnum,
    String? orderStatus,
    String? paymentStatus,
    String? shippingStatus,
    DateTime? createdOn,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return OrderEntity(
      customOrderNumber: customOrderNumber ?? this.customOrderNumber,
      orderTotal: orderTotal ?? this.orderTotal,
      isReturnRequestAllowed:
          isReturnRequestAllowed ?? this.isReturnRequestAllowed,
      orderStatusEnum: orderStatusEnum ?? this.orderStatusEnum,
      orderStatus: orderStatus ?? this.orderStatus,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      shippingStatus: shippingStatus ?? this.shippingStatus,
      createdOn: createdOn ?? this.createdOn,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      customOrderNumber,
      orderTotal,
      isReturnRequestAllowed,
      orderStatusEnum,
      orderStatus,
      paymentStatus,
      shippingStatus,
      createdOn,
      id,
      customProperties,
    ];
  }
}
