// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) =>
    CategoryResponse(
      id: (json['id'] as num).toInt(),
      customProperties: CustomPropertiesResponse.fromJson(
          json['custom_properties'] as Map<String, dynamic>),
      pictureModel: DefaultPictureModelResponse.fromJson(
          json['picture_model'] as Map<String, dynamic>),
      name: json['name'] as String?,
      seName: json['se_name'] as String?,
      numberOfProducts: (json['number_of_products'] as num?)?.toInt(),
      includeInTopMenu: json['include_in_top_menu'] as bool?,
      subCategories: (json['sub_categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      haveSubCategories: json['have_sub_categories'] as bool?,
      route: json['route'] as String?,
    );

Map<String, dynamic> _$CategoryResponseToJson(CategoryResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'se_name': instance.seName,
      'number_of_products': instance.numberOfProducts,
      'include_in_top_menu': instance.includeInTopMenu,
      'sub_categories': instance.subCategories,
      'have_sub_categories': instance.haveSubCategories,
      'route': instance.route,
      'picture_model': instance.pictureModel,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
