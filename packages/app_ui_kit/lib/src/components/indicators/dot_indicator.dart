import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class DotIndicator extends StatelessWidget {
  final int currentIndex;
  final int count;
  final double activeDotWidth;
  final double inactiveDotWidth;
  final double dotHeight;
  final Color activeColor;
  final Color inactiveColor;

  const DotIndicator({
    Key? key,
    required this.currentIndex,
    required this.count,
    this.activeDotWidth = 24.0,
    this.inactiveDotWidth = 8.0,
    this.dotHeight = 8.0,
    this.activeColor = ApplicationColors.primary,
    this.inactiveColor = ApplicationColors.indicatorInactive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: currentIndex == index ? activeDotWidth : inactiveDotWidth,
          height: dotHeight,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: currentIndex == index ? activeColor : inactiveColor,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }
}
