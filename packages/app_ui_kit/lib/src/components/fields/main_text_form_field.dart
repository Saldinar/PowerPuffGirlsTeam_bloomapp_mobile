// ignore_for_file: sort_constructors_first

import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class MainTextFormField extends StatelessWidget {
  final String? label;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextInputType? keyBoardType;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  const MainTextFormField({
    this.controller,
    super.key,
    this.label,
    this.validator,
    this.onChanged,
    this.keyBoardType,
    this.textInputAction,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      obscuringCharacter: '●',
      obscureText: obscureText ?? false,
      keyboardType: keyBoardType,
      textInputAction: textInputAction ?? TextInputAction.next,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        contentPadding: const EdgeInsets.all(Dimensions.unit1_5),
        fillColor: theme.shadowColor,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.unit1_5),
        ),
      ),
    );
  }
}
