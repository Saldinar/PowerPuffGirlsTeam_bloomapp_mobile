import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class AssociatedExternalAuthRecordEntity extends Equatable {
  final String? email;
  final String? externalIdentifier;
  final String? authMethodName;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const AssociatedExternalAuthRecordEntity({
    this.email,
    this.externalIdentifier,
    this.authMethodName,
    this.id,
    this.customProperties,
  });

  AssociatedExternalAuthRecordEntity copyWith({
    String? email,
    String? externalIdentifier,
    String? authMethodName,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return AssociatedExternalAuthRecordEntity(
      email: email ?? this.email,
      externalIdentifier: externalIdentifier ?? this.externalIdentifier,
      authMethodName: authMethodName ?? this.authMethodName,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      email,
      externalIdentifier,
      authMethodName,
      id,
      customProperties,
    ];
  }
}
