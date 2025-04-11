// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_squares_picture_model.g.dart';

@JsonSerializable()
class ImageSquaresPictureModelResponse {
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(name: 'thumb_image_url')
  final String? thumbImageUrl;
  @JsonKey(name: 'full_size_image_url')
  final String? fullSizeImageUrl;
  final String? title;
  @JsonKey(name: 'alternate_text')
  final String? alternateText;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ImageSquaresPictureModelResponse({
    this.imageUrl,
    this.thumbImageUrl,
    this.fullSizeImageUrl,
    this.title,
    this.alternateText,
    this.customProperties,
  });

  factory ImageSquaresPictureModelResponse.fromJson(Map<String, dynamic> json) {
    return _$ImageSquaresPictureModelResponseFromJson(json);
  }

  Map<String, dynamic> toJson() =>
      _$ImageSquaresPictureModelResponseToJson(this);
}
