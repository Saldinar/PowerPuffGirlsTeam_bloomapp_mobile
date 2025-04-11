import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class AppliedDiscountsWithCodeEntity extends Equatable {
  final String? couponCode;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const AppliedDiscountsWithCodeEntity({
    this.couponCode,
    this.id,
    this.customProperties,
  });

  AppliedDiscountsWithCodeEntity copyWith({
    String? couponCode,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return AppliedDiscountsWithCodeEntity(
      couponCode: couponCode ?? this.couponCode,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props => [couponCode, id, customProperties];
}
