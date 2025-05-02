import 'package:json_annotation/json_annotation.dart';

part 'phases_response.g.dart';

@JsonSerializable()
class PhasesResponse {
  final List<String> phases;

  PhasesResponse({required this.phases});

  factory PhasesResponse.fromJson(Map<String, dynamic> json) =>
      _$PhasesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PhasesResponseToJson(this);
}
