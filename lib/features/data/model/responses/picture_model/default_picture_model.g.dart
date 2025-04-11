// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_picture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultPictureModelResponse _$DefaultPictureModelResponseFromJson(
        Map<String, dynamic> json) =>
    DefaultPictureModelResponse(
      imageUrl: json['image_url'] as String,
      thumbImageUrl: json['thumb_image_url'] as String?,
      fullSizeImageUrl: json['full_size_image_url'] as String?,
      title: json['title'] as String?,
      alternateText: json['alternate_text'] as String?,
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DefaultPictureModelResponseToJson(
        DefaultPictureModelResponse instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'thumb_image_url': instance.thumbImageUrl,
      'full_size_image_url': instance.fullSizeImageUrl,
      'title': instance.title,
      'alternate_text': instance.alternateText,
      'custom_properties': instance.customProperties,
    };
