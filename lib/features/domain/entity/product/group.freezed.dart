// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupEntity {
  String? get name => throw _privateConstructorUsedError;
  List<AttributeEntity>? get attributes => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  CustomPropertiesEntity? get customProperties =>
      throw _privateConstructorUsedError;

  /// Create a copy of GroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupEntityCopyWith<GroupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupEntityCopyWith<$Res> {
  factory $GroupEntityCopyWith(
          GroupEntity value, $Res Function(GroupEntity) then) =
      _$GroupEntityCopyWithImpl<$Res, GroupEntity>;
  @useResult
  $Res call(
      {String? name,
      List<AttributeEntity>? attributes,
      int id,
      CustomPropertiesEntity? customProperties});

  $CustomPropertiesEntityCopyWith<$Res>? get customProperties;
}

/// @nodoc
class _$GroupEntityCopyWithImpl<$Res, $Val extends GroupEntity>
    implements $GroupEntityCopyWith<$Res> {
  _$GroupEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? attributes = freezed,
    Object? id = null,
    Object? customProperties = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributeEntity>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customProperties: freezed == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as CustomPropertiesEntity?,
    ) as $Val);
  }

  /// Create a copy of GroupEntity
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$GroupEntityImplCopyWith<$Res>
    implements $GroupEntityCopyWith<$Res> {
  factory _$$GroupEntityImplCopyWith(
          _$GroupEntityImpl value, $Res Function(_$GroupEntityImpl) then) =
      __$$GroupEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      List<AttributeEntity>? attributes,
      int id,
      CustomPropertiesEntity? customProperties});

  @override
  $CustomPropertiesEntityCopyWith<$Res>? get customProperties;
}

/// @nodoc
class __$$GroupEntityImplCopyWithImpl<$Res>
    extends _$GroupEntityCopyWithImpl<$Res, _$GroupEntityImpl>
    implements _$$GroupEntityImplCopyWith<$Res> {
  __$$GroupEntityImplCopyWithImpl(
      _$GroupEntityImpl _value, $Res Function(_$GroupEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? attributes = freezed,
    Object? id = null,
    Object? customProperties = freezed,
  }) {
    return _then(_$GroupEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<AttributeEntity>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customProperties: freezed == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as CustomPropertiesEntity?,
    ));
  }
}

/// @nodoc

class _$GroupEntityImpl implements _GroupEntity {
  _$GroupEntityImpl(
      {required this.name,
      required final List<AttributeEntity>? attributes,
      required this.id,
      required this.customProperties})
      : _attributes = attributes;

  @override
  final String? name;
  final List<AttributeEntity>? _attributes;
  @override
  List<AttributeEntity>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int id;
  @override
  final CustomPropertiesEntity? customProperties;

  @override
  String toString() {
    return 'GroupEntity(name: $name, attributes: $attributes, id: $id, customProperties: $customProperties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customProperties, customProperties) ||
                other.customProperties == customProperties));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_attributes), id, customProperties);

  /// Create a copy of GroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupEntityImplCopyWith<_$GroupEntityImpl> get copyWith =>
      __$$GroupEntityImplCopyWithImpl<_$GroupEntityImpl>(this, _$identity);
}

abstract class _GroupEntity implements GroupEntity {
  factory _GroupEntity(
          {required final String? name,
          required final List<AttributeEntity>? attributes,
          required final int id,
          required final CustomPropertiesEntity? customProperties}) =
      _$GroupEntityImpl;

  @override
  String? get name;
  @override
  List<AttributeEntity>? get attributes;
  @override
  int get id;
  @override
  CustomPropertiesEntity? get customProperties;

  /// Create a copy of GroupEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupEntityImplCopyWith<_$GroupEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
