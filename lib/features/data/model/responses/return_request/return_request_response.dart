import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/return_request/item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'return_request_response.g.dart';

@JsonSerializable()
class ReturnRequestResponse {
  final List<ReturnRequestItemResponse>? items;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ReturnRequestResponse({this.items, this.customProperties});

  factory ReturnRequestResponse.fromJson(Map<String, dynamic> json) {
    return _$ReturnRequestResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReturnRequestResponseToJson(this);
}
