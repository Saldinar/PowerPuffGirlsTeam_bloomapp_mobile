// ignore_for_file: sort_constructors_first

import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class MainDropDownMenu<T> extends StatelessWidget {
  final List<DropdownMenuEntry<T>> entries;
  final String? label;
  final T? initialSelection;
  final double width;
  const MainDropDownMenu({
    required this.entries,
    required this.width,
    this.label,
    super.key,
    this.initialSelection,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DropdownMenu<T>(
      label: Text(label ?? ''),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: theme.shadowColor,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.unit1_5),
        ),
      ),
      width: width,
      initialSelection: initialSelection,
      dropdownMenuEntries: entries,
    );
  }
}
