import 'package:amamini_client/features/data/model/responses/product/group.dart';
import 'package:json_annotation/json_annotation.dart';
part 'available_response.g.dart';

@JsonSerializable()
class AvailableResponse {
  final bool? disabled;
  final GroupResponse? group;
  final bool? selected;
  final String? text;
  final String? value;
  AvailableResponse({
    required this.disabled,
    required this.group,
    required this.selected,
    required this.text,
    required this.value,
  });
  factory AvailableResponse.fromJson(Map<String, dynamic> json) {
    return _$AvailableResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AvailableResponseToJson(this);
}
