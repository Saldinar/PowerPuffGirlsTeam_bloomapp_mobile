import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gdpr_consent.g.dart';

@JsonSerializable()
class GdprConsentResponse {
  final String? message;
  @JsonKey(name: 'is_required')
  final bool? isRequired;
  @JsonKey(name: 'required_message')
  final String? requiredMessage;
  final bool? accepted;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const GdprConsentResponse({
    this.message,
    this.isRequired,
    this.requiredMessage,
    this.accepted,
    this.id,
    this.customProperties,
  });

  factory GdprConsentResponse.fromJson(Map<String, dynamic> json) {
    return _$GdprConsentResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GdprConsentResponseToJson(this);
}
