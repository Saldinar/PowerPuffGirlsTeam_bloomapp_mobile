// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gift_card.g.dart';

@JsonSerializable()
class GiftCardResponse {
  @JsonKey(name: 'is_gift_card')
  final bool? isGiftCard;
  @JsonKey(name: 'recipient_name')
  final String? recipientName;
  @JsonKey(name: 'recipient_email')
  final String? recipientEmail;
  @JsonKey(name: 'sender_name')
  final String? senderName;
  @JsonKey(name: 'sender_email')
  final String? senderEmail;
  final String? message;
  @JsonKey(name: 'gift_card_type')
  final String? giftCardType;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const GiftCardResponse({
    this.isGiftCard,
    this.recipientName,
    this.recipientEmail,
    this.senderName,
    this.senderEmail,
    this.message,
    this.giftCardType,
    this.customProperties,
  });

  factory GiftCardResponse.fromJson(Map<String, dynamic> json) {
    return _$GiftCardResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GiftCardResponseToJson(this);
}
