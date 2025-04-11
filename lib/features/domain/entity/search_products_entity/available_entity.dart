import 'package:amamini_client/features/domain/entity/product/group.dart';

class AvailableEntity {
  final bool? disabled;
  final GroupEntity? group;
  final bool? selected;
  final String? text;
  final String? value;

  AvailableEntity({
    this.disabled,
    this.group,
    this.selected,
    this.text,
    this.value,
  });
}
