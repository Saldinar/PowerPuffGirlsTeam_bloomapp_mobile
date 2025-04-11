// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/group.dart';
import 'package:equatable/equatable.dart';

class AllowedQuantityEntity extends Equatable {
  final bool? disabled;
  final GroupEntity? group;
  final bool? selected;
  final String? text;
  final String? value;

  const AllowedQuantityEntity({
    required this.disabled,
    required this.group,
    required this.selected,
    required this.text,
    required this.value,
  });

  AllowedQuantityEntity copyWith({
    bool? disabled,
    GroupEntity? group,
    bool? selected,
    String? text,
    String? value,
  }) {
    return AllowedQuantityEntity(
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
