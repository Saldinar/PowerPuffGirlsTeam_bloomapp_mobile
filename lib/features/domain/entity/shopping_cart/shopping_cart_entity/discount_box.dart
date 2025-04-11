import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/shopping_cart/shopping_cart_entity/applied_discounts_with_code.dart';
import 'package:equatable/equatable.dart';

class DiscountBoxEntity extends Equatable {
  final List<AppliedDiscountsWithCodeEntity>? appliedDiscountsWithCodes;
  final bool? display;
  final List<String>? messages;
  final bool? isApplied;
  final CustomPropertiesEntity? customProperties;

  const DiscountBoxEntity({
    this.appliedDiscountsWithCodes,
    this.display,
    this.messages,
    this.isApplied,
    this.customProperties,
  });

  DiscountBoxEntity copyWith({
    List<AppliedDiscountsWithCodeEntity>? appliedDiscountsWithCodes,
    bool? display,
    List<String>? messages,
    bool? isApplied,
    CustomPropertiesEntity? customProperties,
  }) {
    return DiscountBoxEntity(
      appliedDiscountsWithCodes:
          appliedDiscountsWithCodes ?? this.appliedDiscountsWithCodes,
      display: display ?? this.display,
      messages: messages ?? this.messages,
      isApplied: isApplied ?? this.isApplied,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      appliedDiscountsWithCodes,
      display,
      messages,
      isApplied,
      customProperties,
    ];
  }
}
