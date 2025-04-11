import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:amamini_client/features/domain/entity/return_request/item.dart';
import 'package:equatable/equatable.dart';

class ReturnRequestEntity extends Equatable {
  final List<ReturnRequestItemEntity>? items;
  final CustomPropertiesEntity? customProperties;

  const ReturnRequestEntity({
    this.items,
    this.customProperties,
  });

  ReturnRequestEntity copyWith({
    List<ReturnRequestItemEntity>? items,
    CustomPropertiesEntity? customProperties,
  }) {
    return ReturnRequestEntity(
      items: items ?? this.items,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props => [items, customProperties];
}
