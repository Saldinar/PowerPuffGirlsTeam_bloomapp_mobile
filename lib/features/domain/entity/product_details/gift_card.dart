// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class GiftCardEntity extends Equatable {
  final bool? isGiftCard;
  final String? recipientName;
  final String? recipientEmail;
  final String? senderName;
  final String? senderEmail;
  final String? message;
  final String? giftCardType;
  final CustomPropertiesEntity? customProperties;

  const GiftCardEntity({
    required this.isGiftCard,
    required this.recipientName,
    required this.recipientEmail,
    required this.senderName,
    required this.senderEmail,
    required this.message,
    required this.giftCardType,
    required this.customProperties,
  });

  GiftCardEntity copyWith({
    bool? isGiftCard,
    String? recipientName,
    String? recipientEmail,
    String? senderName,
    String? senderEmail,
    String? message,
    String? giftCardType,
    CustomPropertiesEntity? customProperties,
  }) {
    return GiftCardEntity(
      isGiftCard: isGiftCard ?? this.isGiftCard,
      recipientName: recipientName ?? this.recipientName,
      recipientEmail: recipientEmail ?? this.recipientEmail,
      senderName: senderName ?? this.senderName,
      senderEmail: senderEmail ?? this.senderEmail,
      message: message ?? this.message,
      giftCardType: giftCardType ?? this.giftCardType,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      isGiftCard,
      recipientName,
      recipientEmail,
      senderName,
      senderEmail,
      message,
      giftCardType,
      customProperties,
    ];
  }
}
