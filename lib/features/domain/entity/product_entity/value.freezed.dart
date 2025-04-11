// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueEntity {
  int get attributeTypeId => throw _privateConstructorUsedError;
  String get valueRaw => throw _privateConstructorUsedError;
  String get colorSquaresRgb => throw _privateConstructorUsedError;
  CustomPropertiesEntity get customProperties =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueEntityCopyWith<ValueEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueEntityCopyWith<$Res> {
  factory $ValueEntityCopyWith(
          ValueEntity value, $Res Function(ValueEntity) then) =
      _$ValueEntityCopyWithImpl<$Res, ValueEntity>;
  @useResult
  $Res call(
      {int attributeTypeId,
      String valueRaw,
      String colorSquaresRgb,
      CustomPropertiesEntity customProperties});

  $CustomPropertiesEntityCopyWith<$Res> get customProperties;
}

/// @nodoc
class _$ValueEntityCopyWithImpl<$Res, $Val extends ValueEntity>
    implements $ValueEntityCopyWith<$Res> {
  _$ValueEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeTypeId = null,
    Object? valueRaw = null,
    Object? colorSquaresRgb = null,
    Object? customProperties = null,
  }) {
    return _then(_value.copyWith(
      attributeTypeId: null == attributeTypeId
          ? _value.attributeTypeId
          : attributeTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      valueRaw: null == valueRaw
          ? _value.valueRaw
          : valueRaw // ignore: cast_nullable_to_non_nullable
              as String,
      colorSquaresRgb: null == colorSquaresRgb
          ? _value.colorSquaresRgb
          : colorSquaresRgb // ignore: cast_nullable_to_non_nullable
              as String,
      customProperties: null == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as CustomPropertiesEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomPropertiesEntityCopyWith<$Res> get customProperties {
    return $CustomPropertiesEntityCopyWith<$Res>(_value.customProperties,
        (value) {
      return _then(_value.copyWith(customProperties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValueEntityImplCopyWith<$Res>
    implements $ValueEntityCopyWith<$Res> {
  factory _$$ValueEntityImplCopyWith(
          _$ValueEntityImpl value, $Res Function(_$ValueEntityImpl) then) =
      __$$ValueEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int attributeTypeId,
      String valueRaw,
      String colorSquaresRgb,
      CustomPropertiesEntity customProperties});

  @override
  $CustomPropertiesEntityCopyWith<$Res> get customProperties;
}

/// @nodoc
class __$$ValueEntityImplCopyWithImpl<$Res>
    extends _$ValueEntityCopyWithImpl<$Res, _$ValueEntityImpl>
    implements _$$ValueEntityImplCopyWith<$Res> {
  __$$ValueEntityImplCopyWithImpl(
      _$ValueEntityImpl _value, $Res Function(_$ValueEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeTypeId = null,
    Object? valueRaw = null,
    Object? colorSquaresRgb = null,
    Object? customProperties = null,
  }) {
    return _then(_$ValueEntityImpl(
      attributeTypeId: null == attributeTypeId
          ? _value.attributeTypeId
          : attributeTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      valueRaw: null == valueRaw
          ? _value.valueRaw
          : valueRaw // ignore: cast_nullable_to_non_nullable
              as String,
      colorSquaresRgb: null == colorSquaresRgb
          ? _value.colorSquaresRgb
          : colorSquaresRgb // ignore: cast_nullable_to_non_nullable
              as String,
      customProperties: null == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as CustomPropertiesEntity,
    ));
  }
}

/// @nodoc

class _$ValueEntityImpl implements _ValueEntity {
  _$ValueEntityImpl(
      {required this.attributeTypeId,
      required this.valueRaw,
      required this.colorSquaresRgb,
      required this.customProperties});

  @override
  final int attributeTypeId;
  @override
  final String valueRaw;
  @override
  final String colorSquaresRgb;
  @override
  final CustomPropertiesEntity customProperties;

  @override
  String toString() {
    return 'ValueEntity(attributeTypeId: $attributeTypeId, valueRaw: $valueRaw, colorSquaresRgb: $colorSquaresRgb, customProperties: $customProperties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueEntityImpl &&
            (identical(other.attributeTypeId, attributeTypeId) ||
                other.attributeTypeId == attributeTypeId) &&
            (identical(other.valueRaw, valueRaw) ||
                other.valueRaw == valueRaw) &&
            (identical(other.colorSquaresRgb, colorSquaresRgb) ||
                other.colorSquaresRgb == colorSquaresRgb) &&
            (identical(other.customProperties, customProperties) ||
                other.customProperties == customProperties));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attributeTypeId, valueRaw,
      colorSquaresRgb, customProperties);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueEntityImplCopyWith<_$ValueEntityImpl> get copyWith =>
      __$$ValueEntityImplCopyWithImpl<_$ValueEntityImpl>(this, _$identity);
}

abstract class _ValueEntity implements ValueEntity {
  factory _ValueEntity(
          {required final int attributeTypeId,
          required final String valueRaw,
          required final String colorSquaresRgb,
          required final CustomPropertiesEntity customProperties}) =
      _$ValueEntityImpl;

  @override
  int get attributeTypeId;
  @override
  String get valueRaw;
  @override
  String get colorSquaresRgb;
  @override
  CustomPropertiesEntity get customProperties;
  @override
  @JsonKey(ignore: true)
  _$$ValueEntityImplCopyWith<_$ValueEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
