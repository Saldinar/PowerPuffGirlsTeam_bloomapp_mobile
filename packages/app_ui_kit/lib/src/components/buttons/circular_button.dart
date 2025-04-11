import 'package:app_ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    required this.icon,
    required this.backgroundColor,
    super.key,
    this.onPressed,
    this.elevation = 1,
    this.height = Dimensions.unit6,
    this.padding = Dimensions.unit,
  });

  final SvgPicture icon;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final double height;
  final double padding;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: elevation,
      onPressed: onPressed,
      shape: const CircleBorder(),
      splashColor: AppColors.black.withOpacity(.1),
      foregroundColor: backgroundColor.withOpacity(.2),
      backgroundColor: backgroundColor,
      child: Container(
        height: height,
        width: height,
        padding: EdgeInsets.all(padding),
        child: icon,
      ),
    );
  }
}
