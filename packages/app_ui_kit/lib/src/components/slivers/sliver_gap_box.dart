// ignore_for_file: sort_constructors_first

import 'package:flutter/material.dart';

class SliverGapBox extends StatelessWidget {
  final double? height;
  final double? wight;
  const SliverGapBox({
    super.key,
    this.height,
    this.wight,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(height: height, width: wight),
    );
  }
}
