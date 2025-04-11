// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class ImageSquaresPictureModelEntity extends Equatable {
  final String? imageUrl;
  final String? thumbImageUrl;
  final String? fullSizeImageUrl;
  final String? title;
  final String? alternateText;
  final CustomPropertiesEntity? customProperties;

  const ImageSquaresPictureModelEntity({
    required this.imageUrl,
    required this.thumbImageUrl,
    required this.fullSizeImageUrl,
    required this.title,
    required this.alternateText,
    required this.customProperties,
  });

  ImageSquaresPictureModelEntity copyWith({
    String? imageUrl,
    String? thumbImageUrl,
    String? fullSizeImageUrl,
    String? title,
    String? alternateText,
    CustomPropertiesEntity? customProperties,
  }) {
    return ImageSquaresPictureModelEntity(
      imageUrl: imageUrl ?? this.imageUrl,
      thumbImageUrl: thumbImageUrl ?? this.thumbImageUrl,
      fullSizeImageUrl: fullSizeImageUrl ?? this.fullSizeImageUrl,
      title: title ?? this.title,
      alternateText: alternateText ?? this.alternateText,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      imageUrl,
      thumbImageUrl,
      fullSizeImageUrl,
      title,
      alternateText,
      customProperties,
    ];
  }
}
