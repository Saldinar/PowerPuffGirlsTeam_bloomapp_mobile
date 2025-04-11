import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gift_card_box.g.dart';

@JsonSerializable()
class GiftCardBoxResponse {
  final bool? display;
  final String? message;
  @JsonKey(name: 'is_applied')
  final bool? isApplied;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const GiftCardBoxResponse({
    this.display,
    this.message,
    this.isApplied,
    this.customProperties,
  });

  factory GiftCardBoxResponse.fromJson(Map<String, dynamic> json) {
    return _$GiftCardBoxResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GiftCardBoxResponseToJson(this);
}
