// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class AvailablePriceRangeEntity with EquatableMixin {
  final int from;
  final int to;
  final CustomPropertiesEntity customProperties;
  const AvailablePriceRangeEntity({
    required this.from,
    required this.to,
    required this.customProperties,
  });

  @override
  List<Object?> get props => [from, to, customProperties];
}
