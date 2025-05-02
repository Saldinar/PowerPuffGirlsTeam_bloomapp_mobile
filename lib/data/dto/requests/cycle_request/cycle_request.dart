import 'package:json_annotation/json_annotation.dart';

part '../cycle_request/cycle_request.g.dart';

@JsonSerializable()
class CycleRequest {
  final String lastPeriodDate;
  final int cycleLength;
  final int periodLength;
  final int age;

  const CycleRequest({
    required this.lastPeriodDate,
    required this.cycleLength,
    required this.periodLength,
  });

  factory CycleRequest.fromJson(Map<String, dynamic> json) =>
      _$CycleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CycleRequestToJson(this);
}
