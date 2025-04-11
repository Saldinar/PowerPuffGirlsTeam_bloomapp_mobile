import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class GdprConsentEntity extends Equatable {
  final String? message;
  final bool? isRequired;
  final String? requiredMessage;
  final bool? accepted;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const GdprConsentEntity({
    this.message,
    this.isRequired,
    this.requiredMessage,
    this.accepted,
    this.id,
    this.customProperties,
  });

  GdprConsentEntity copyWith({
    String? message,
    bool? isRequired,
    String? requiredMessage,
    bool? accepted,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return GdprConsentEntity(
      message: message ?? this.message,
      isRequired: isRequired ?? this.isRequired,
      requiredMessage: requiredMessage ?? this.requiredMessage,
      accepted: accepted ?? this.accepted,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      message,
      isRequired,
      requiredMessage,
      accepted,
      id,
      customProperties,
    ];
  }
}
