// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_specification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductSpecificationModelEntity {
  List<GroupEntity>? get groups => throw _privateConstructorUsedError;
  CustomPropertiesEntity? get customProperties =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductSpecificationModelEntityCopyWith<ProductSpecificationModelEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSpecificationModelEntityCopyWith<$Res> {
  factory $ProductSpecificationModelEntityCopyWith(
          ProductSpecificationModelEntity value,
          $Res Function(ProductSpecificationModelEntity) then) =
      _$ProductSpecificationModelEntityCopyWithImpl<$Res,
          ProductSpecificationModelEntity>;
  @useResult
  $Res call(
      {List<GroupEntity>? groups, CustomPropertiesEntity? customProperties});

  $CustomPropertiesEntityCopyWith<$Res>? get customProperties;
}

/// @nodoc
class _$ProductSpecificationModelEntityCopyWithImpl<$Res,
        $Val extends ProductSpecificationModelEntity>
    implements $ProductSpecificationModelEntityCopyWith<$Res> {
  _$ProductSpecificationModelEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = freezed,
    Object? customProperties = freezed,
  }) {
    return _then(_value.copyWith(
      groups: freezed == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>?,
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
abstract class _$$ProductSpecificationModelEntityImplCopyWith<$Res>
    implements $ProductSpecificationModelEntityCopyWith<$Res> {
  factory _$$ProductSpecificationModelEntityImplCopyWith(
          _$ProductSpecificationModelEntityImpl value,
          $Res Function(_$ProductSpecificationModelEntityImpl) then) =
      __$$ProductSpecificationModelEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GroupEntity>? groups, CustomPropertiesEntity? customProperties});

  @override
  $CustomPropertiesEntityCopyWith<$Res>? get customProperties;
}

/// @nodoc
class __$$ProductSpecificationModelEntityImplCopyWithImpl<$Res>
    extends _$ProductSpecificationModelEntityCopyWithImpl<$Res,
        _$ProductSpecificationModelEntityImpl>
    implements _$$ProductSpecificationModelEntityImplCopyWith<$Res> {
  __$$ProductSpecificationModelEntityImplCopyWithImpl(
      _$ProductSpecificationModelEntityImpl _value,
      $Res Function(_$ProductSpecificationModelEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = freezed,
    Object? customProperties = freezed,
  }) {
    return _then(_$ProductSpecificationModelEntityImpl(
      groups: freezed == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>?,
      customProperties: freezed == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as CustomPropertiesEntity?,
    ));
  }
}

/// @nodoc

class _$ProductSpecificationModelEntityImpl
    implements _ProductSpecificationModelEntity {
  _$ProductSpecificationModelEntityImpl(
      {required final List<GroupEntity>? groups,
      required this.customProperties})
      : _groups = groups;

  final List<GroupEntity>? _groups;
  @override
  List<GroupEntity>? get groups {
    final value = _groups;
    if (value == null) return null;
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CustomPropertiesEntity? customProperties;

  @override
  String toString() {
    return 'ProductSpecificationModelEntity(groups: $groups, customProperties: $customProperties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSpecificationModelEntityImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.customProperties, customProperties) ||
                other.customProperties == customProperties));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_groups), customProperties);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSpecificationModelEntityImplCopyWith<
          _$ProductSpecificationModelEntityImpl>
      get copyWith => __$$ProductSpecificationModelEntityImplCopyWithImpl<
          _$ProductSpecificationModelEntityImpl>(this, _$identity);
}

abstract class _ProductSpecificationModelEntity
    implements ProductSpecificationModelEntity {
  factory _ProductSpecificationModelEntity(
          {required final List<GroupEntity>? groups,
          required final CustomPropertiesEntity? customProperties}) =
      _$ProductSpecificationModelEntityImpl;

  @override
  List<GroupEntity>? get groups;
  @override
  CustomPropertiesEntity? get customProperties;
  @override
  @JsonKey(ignore: true)
  _$$ProductSpecificationModelEntityImplCopyWith<
          _$ProductSpecificationModelEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
