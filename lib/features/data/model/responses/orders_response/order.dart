import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable()
class OrderResponse {
  @JsonKey(name: 'custom_order_number')
  final String? customOrderNumber;
  @JsonKey(name: 'order_total')
  final String? orderTotal;
  @JsonKey(name: 'is_return_request_allowed')
  final bool? isReturnRequestAllowed;
  @JsonKey(name: 'order_status_enum')
  final int? orderStatusEnum;
  @JsonKey(name: 'order_status')
  final String? orderStatus;
  @JsonKey(name: 'payment_status')
  final String? paymentStatus;
  @JsonKey(name: 'shipping_status')
  final String? shippingStatus;
  @JsonKey(name: 'created_on')
  final DateTime? createdOn;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const OrderResponse({
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

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderResponseToJson(this);
}
