// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/group.dart';
import 'package:equatable/equatable.dart';

class ManufacturerInfoEntity extends Equatable {
  final bool disabled;
  final GroupEntity? group;
  final bool selected;
  final String text;
  final String value;

  const ManufacturerInfoEntity({
    required this.disabled,
    required this.group,
    required this.selected,
    required this.text,
    required this.value,
  });

  ManufacturerInfoEntity copyWith({
    bool? disabled,
    GroupEntity? group,
    bool? selected,
    String? text,
    String? value,
  }) {
    return ManufacturerInfoEntity(
      disabled: disabled ?? this.disabled,
      group: group ?? this.group,
      selected: selected ?? this.selected,
      text: text ?? this.text,
      value: value ?? this.value,
    );
  }

  @override
  List<Object?> get props => [disabled, group, selected, text, value];
}
