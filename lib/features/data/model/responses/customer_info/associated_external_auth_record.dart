import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'associated_external_auth_record.g.dart';

@JsonSerializable()
class AssociatedExternalAuthRecordResponse {
  final String? email;
  @JsonKey(name: 'external_identifier')
  final String? externalIdentifier;
  @JsonKey(name: 'auth_method_name')
  final String? authMethodName;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const AssociatedExternalAuthRecordResponse({
    this.email,
    this.externalIdentifier,
    this.authMethodName,
    this.id,
    this.customProperties,
  });

  factory AssociatedExternalAuthRecordResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return _$AssociatedExternalAuthRecordResponseFromJson(json);
  }

  Map<String, dynamic> toJson() =>
      _$AssociatedExternalAuthRecordResponseToJson(this);
}
