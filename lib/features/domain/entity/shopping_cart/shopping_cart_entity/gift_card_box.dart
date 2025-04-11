import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class GiftCardBoxEntity extends Equatable {
  final bool? display;
  final String? message;
  final bool? isApplied;
  final CustomPropertiesEntity? customProperties;

  const GiftCardBoxEntity({
    this.display,
    this.message,
    this.isApplied,
    this.customProperties,
  });

  GiftCardBoxEntity copyWith({
    bool? display,
    String? message,
    bool? isApplied,
    CustomPropertiesEntity? customProperties,
  }) {
    return GiftCardBoxEntity(
      display: display ?? this.display,
      message: message ?? this.message,
      isApplied: isApplied ?? this.isApplied,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      display,
      message,
      isApplied,
      customProperties,
    ];
  }
}
