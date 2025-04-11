import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Class where you add new svg assets
class SvgAssets {
  const SvgAssets();

  SvgAsset get icBack => SvgAsset('ic_back');
  SvgAsset get nopCommerceLogo => SvgAsset('nopcommerce_logo');
}

/// Class-wrapper for svg assets.
class SvgAsset {
  SvgAsset(this._assetName);

  static const String _basePath = 'assets/svg';
  static const String _ext = 'svg';

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.antiAlias,
    Color? color,
  }) {
    return SvgPicture.asset(
      path,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      colorFilter: color != null
          ? ColorFilter.mode(
              color,
              BlendMode.srcIn,
            )
          : null,
    );
  }

  String get path => '$_basePath/$_assetName.$_ext';
}
