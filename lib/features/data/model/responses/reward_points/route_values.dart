import 'package:json_annotation/json_annotation.dart';

part 'route_values.g.dart';

@JsonSerializable()
class RouteValuesResponse {
  @JsonKey(name: 'page_number')
  final int? pageNumber;

  const RouteValuesResponse({this.pageNumber});

  factory RouteValuesResponse.fromJson(Map<String, dynamic> json) {
    return _$RouteValuesResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RouteValuesResponseToJson(this);
}
