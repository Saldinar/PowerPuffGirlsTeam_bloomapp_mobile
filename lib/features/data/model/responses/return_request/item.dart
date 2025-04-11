import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class ReturnRequestItemResponse {
  @JsonKey(name: 'custom_number')
  final String? customNumber;
  @JsonKey(name: 'return_request_status')
  final String? returnRequestStatus;
  @JsonKey(name: 'product_id')
  final int? productId;
  @JsonKey(name: 'product_name')
  final String? productName;
  @JsonKey(name: 'product_se_name')
  final String? productSeName;
  final int? quantity;
  @JsonKey(name: 'return_reason')
  final String? returnReason;
  @JsonKey(name: 'return_action')
  final String? returnAction;
  final String? comments;
  @JsonKey(name: 'uploaded_file_guid')
  final String? uploadedFileGuid;
  @JsonKey(name: 'created_on')
  final DateTime? createdOn;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ReturnRequestItemResponse({
    this.customNumber,
    this.returnRequestStatus,
    this.productId,
    this.productName,
    this.productSeName,
    this.quantity,
    this.returnReason,
    this.returnAction,
    this.comments,
    this.uploadedFileGuid,
    this.createdOn,
    this.id,
    this.customProperties,
  });

  factory ReturnRequestItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ReturnRequestItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReturnRequestItemResponseToJson(this);
}
