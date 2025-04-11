import 'package:flutter/material.dart';

/// Class where you add new image assets
class ImageAssets {
  const ImageAssets();

  ImageAsset get smallLogo => const ImageAsset('small_logo', 'png');
  ImageAsset get fullLogo => const ImageAsset('nopcommerce_full_logo', 'png');
  ImageAsset get defaultPicture => const ImageAsset('image_placeholder', 'png');
  ImageAsset get errorPicture => const ImageAsset('error_image', 'png');
  ImageAsset get nopCommerceLogo => const ImageAsset('nopcommerce_logo', 'png');
}

/// Class-wrapper for image assets.
class ImageAsset extends AssetImage {
  const ImageAsset(this.name, this.extension)
      : super('$basePath/$name.$extension');

  static const String basePath = 'assets/images';

  final String name;
  final String extension;

  String get path => super.assetName;

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
    String? package,
  }) {
    return Image.asset(
      path,
      key: key,
      package: package,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }
}
