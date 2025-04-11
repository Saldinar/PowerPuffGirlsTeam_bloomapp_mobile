import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class AdditionalProductReviewListEntity extends Equatable {
  final int? productReviewId;
  final int? reviewTypeId;
  final int? rating;
  final String? name;
  final bool? visibleToAllCustomers;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const AdditionalProductReviewListEntity({
    required this.productReviewId,
    required this.reviewTypeId,
    required this.rating,
    required this.name,
    required this.visibleToAllCustomers,
    required this.id,
    required this.customProperties,
  });

  AdditionalProductReviewListEntity copyWith({
    int? productReviewId,
    int? reviewTypeId,
    int? rating,
    String? name,
    bool? visibleToAllCustomers,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return AdditionalProductReviewListEntity(
      productReviewId: productReviewId ?? this.productReviewId,
      reviewTypeId: reviewTypeId ?? this.reviewTypeId,
      rating: rating ?? this.rating,
      name: name ?? this.name,
      visibleToAllCustomers:
          visibleToAllCustomers ?? this.visibleToAllCustomers,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      productReviewId,
      reviewTypeId,
      rating,
      name,
      visibleToAllCustomers,
      id,
      customProperties,
    ];
  }
}
