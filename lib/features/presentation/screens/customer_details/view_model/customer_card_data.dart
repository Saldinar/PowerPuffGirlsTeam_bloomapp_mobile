import 'package:flutter/material.dart';

class CustomerCardData {
  final String Function(BuildContext) titleBuilder;
  final IconData icon;
  final Function(BuildContext) onTap;

  CustomerCardData({
    required this.titleBuilder,
    required this.icon,
    required this.onTap,
  });
}
