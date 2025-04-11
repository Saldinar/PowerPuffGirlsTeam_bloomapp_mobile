// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardResponse _$GiftCardResponseFromJson(Map<String, dynamic> json) =>
    GiftCardResponse(
      isGiftCard: json['is_gift_card'] as bool?,
      recipientName: json['recipient_name'] as String?,
      recipientEmail: json['recipient_email'] as String?,
      senderName: json['sender_name'] as String?,
      senderEmail: json['sender_email'] as String?,
      message: json['message'] as String?,
      giftCardType: json['gift_card_type'] as String?,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardResponseToJson(GiftCardResponse instance) =>
    <String, dynamic>{
      'is_gift_card': instance.isGiftCard,
      'recipient_name': instance.recipientName,
      'recipient_email': instance.recipientEmail,
      'sender_name': instance.senderName,
      'sender_email': instance.senderEmail,
      'message': instance.message,
      'gift_card_type': instance.giftCardType,
      'custom_properties': instance.customProperties,
    };
