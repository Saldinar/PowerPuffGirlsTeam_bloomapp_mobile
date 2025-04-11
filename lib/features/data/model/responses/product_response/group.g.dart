// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupResponse _$GroupResponseFromJson(Map<String, dynamic> json) =>
    GroupResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => AttributeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupResponseToJson(GroupResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'attributes': instance.attributes,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
