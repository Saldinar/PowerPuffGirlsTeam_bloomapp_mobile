// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_picture_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DefaultPictureModelEntity {
  String get imageUrl => throw _privateConstructorUsedError;
  String? get thumbImageUrl => throw _privateConstructorUsedError;
  String? get fullSizeImageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get alternateText => throw _privateConstructorUsedError;
  CustomPropertiesEntity? get customProperties =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DefaultPictureModelEntityCopyWith<DefaultPictureModelEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultPictureModelEntityCopyWith<$Res> {
  factory $DefaultPictureModelEntityCopyWith(DefaultPictureModelEntity value,
          $Res Function(DefaultPictureModelEntity) then) =
      _$DefaultPictureModelEntityCopyWithImpl<$Res, DefaultPictureModelEntity>;
  @useResult
  $Res call(
      {String imageUrl,
      String? thumbImageUrl,
      String? fullSizeImageUrl,
      String? title,
      String? alternateText,
      CustomPropertiesEntity? customProperties});

  $CustomPropertiesEntityCopyWith<$Res>? get customProperties;
}

/// @nodoc
class _$DefaultPictureModelEntityCopyWithImpl<$Res,
        $Val extends DefaultPictureModelEntity>
    implements $DefaultPictureModelEntityCopyWith<$Res> {
  _$DefaultPictureModelEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? thumbImageUrl = freezed,
    Object? fullSizeImageUrl = freezed,
    Object? title = freezed,
    Object? alternateText = freezed,
    Object? customProperties = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbImageUrl: freezed == thumbImageUrl
          ? _value.thumbImageUrl
          : thumbImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fullSizeImageUrl: freezed == fullSizeImageUrl
          ? _value.fullSizeImageUrl
          : fullSizeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      alternateText: freezed == alternateText
          ? _value.alternateText
          : alternateText // ignore: cast_nullable_to_non_nullable
              as String?,
      customProperties: freezed == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as CustomPropertiesEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomPropertiesEntityCopyWith<$Res>? get customProperties {
    if (_value.customProperties == null) {
      return null;
    }

    return $CustomPropertiesEntityCopyWith<$Res>(_value.customProperties!,
        (value) {
      return _then(_value.copyWith(customProperties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DefaultPictureModelEntityImplCopyWith<$Res>
    implements $DefaultPictureModelEntityCopyWith<$Res> {
  factory _$$DefaultPictureModelEntityImplCopyWith(
          _$DefaultPictureModelEntityImpl value,
          $Res Function(_$DefaultPictureModelEntityImpl) then) =
      __$$DefaultPictureModelEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imageUrl,
      String? thumbImageUrl,
      String? fullSizeImageUrl,
      String? title,
      String? alternateText,
      CustomPropertiesEntity? customProperties});

  @override
  $CustomPropertiesEntityCopyWith<$Res>? get customProperties;
}

/// @nodoc
class __$$DefaultPictureModelEntityImplCopyWithImpl<$Res>
    extends _$DefaultPictureModelEntityCopyWithImpl<$Res,
        _$DefaultPictureModelEntityImpl>
    implements _$$DefaultPictureModelEntityImplCopyWith<$Res> {
  __$$DefaultPictureModelEntityImplCopyWithImpl(
      _$DefaultPictureModelEntityImpl _value,
      $Res Function(_$DefaultPictureModelEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? thumbImageUrl = freezed,
    Object? fullSizeImageUrl = freezed,
    Object? title = freezed,
    Object? alternateText = freezed,
    Object? customProperties = freezed,
  }) {
    return _then(_$DefaultPictureModelEntityImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbImageUrl: freezed == thumbImageUrl
          ? _value.thumbImageUrl
          : thumbImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fullSizeImageUrl: freezed == fullSizeImageUrl
          ? _value.fullSizeImageUrl
          : fullSizeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      alternateText: freezed == alternateText
          ? _value.alternateText
          : alternateText // ignore: cast_nullable_to_non_nullable
              as String?,
      customProperties: freezed == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as CustomPropertiesEntity?,
    ));
  }
}

/// @nodoc

class _$DefaultPictureModelEntityImpl implements _DefaultPictureModelEntity {
  _$DefaultPictureModelEntityImpl(
      {required this.imageUrl,
      required this.thumbImageUrl,
      required this.fullSizeImageUrl,
      required this.title,
      required this.alternateText,
      required this.customProperties});

  @override
  final String imageUrl;
  @override
  final String? thumbImageUrl;
  @override
  final String? fullSizeImageUrl;
  @override
  final String? title;
  @override
  final String? alternateText;
  @override
  final CustomPropertiesEntity? customProperties;

  @override
  String toString() {
    return 'DefaultPictureModelEntity(imageUrl: $imageUrl, thumbImageUrl: $thumbImageUrl, fullSizeImageUrl: $fullSizeImageUrl, title: $title, alternateText: $alternateText, customProperties: $customProperties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultPictureModelEntityImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.thumbImageUrl, thumbImageUrl) ||
                other.thumbImageUrl == thumbImageUrl) &&
            (identical(other.fullSizeImageUrl, fullSizeImageUrl) ||
                other.fullSizeImageUrl == fullSizeImageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.alternateText, alternateText) ||
                other.alternateText == alternateText) &&
            (identical(other.customProperties, customProperties) ||
                other.customProperties == customProperties));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, thumbImageUrl,
      fullSizeImageUrl, title, alternateText, customProperties);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultPictureModelEntityImplCopyWith<_$DefaultPictureModelEntityImpl>
      get copyWith => __$$DefaultPictureModelEntityImplCopyWithImpl<
          _$DefaultPictureModelEntityImpl>(this, _$identity);
}

abstract class _DefaultPictureModelEntity implements DefaultPictureModelEntity {
  factory _DefaultPictureModelEntity(
          {required final String imageUrl,
          required final String? thumbImageUrl,
          required final String? fullSizeImageUrl,
          required final String? title,
          required final String? alternateText,
          required final CustomPropertiesEntity? customProperties}) =
      _$DefaultPictureModelEntityImpl;

  @override
  String get imageUrl;
  @override
  String? get thumbImageUrl;
  @override
  String? get fullSizeImageUrl;
  @override
  String? get title;
  @override
  String? get alternateText;
  @override
  CustomPropertiesEntity? get customProperties;
  @override
  @JsonKey(ignore: true)
  _$$DefaultPictureModelEntityImplCopyWith<_$DefaultPictureModelEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
