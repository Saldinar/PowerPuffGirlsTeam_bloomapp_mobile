// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:json_annotation/json_annotation.dart';

part 'default_picture_model.g.dart';

@JsonSerializable()
class DefaultPictureModelResponse {
  DefaultPictureModelResponse({
    required this.imageUrl,
    this.thumbImageUrl,
    this.fullSizeImageUrl,
    this.title,
    this.alternateText,
    this.customProperties,
  });

  @JsonKey(name: 'image_url')
  String imageUrl;
  @JsonKey(name: 'thumb_image_url')
  String? thumbImageUrl;
  @JsonKey(name: 'full_size_image_url')
  String? fullSizeImageUrl;
  String? title;
  @JsonKey(name: 'alternate_text')
  String? alternateText;
  @JsonKey(name: 'custom_properties')
  CustomPropertiesResponse? customProperties;

  factory DefaultPictureModelResponse.fromJson(Map<String, dynamic> json) =>
      _$DefaultPictureModelResponseFromJson(json);
}
