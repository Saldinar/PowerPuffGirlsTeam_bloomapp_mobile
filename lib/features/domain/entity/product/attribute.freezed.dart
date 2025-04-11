// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttributeEntity {
  String? get name => throw _privateConstructorUsedError;
  List<ValueEntity>? get values => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  CustomPropertiesEntity? get customProperties =>
      throw _privateConstructorUsedError;

  /// Create a copy of AttributeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeEntityCopyWith<AttributeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeEntityCopyWith<$Res> {
  factory $AttributeEntityCopyWith(
          AttributeEntity value, $Res Function(AttributeEntity) then) =
      _$AttributeEntityCopyWithImpl<$Res, AttributeEntity>;
  @useResult
  $Res call(
      {String? name,
      List<ValueEntity>? values,
      int id,
      CustomPropertiesEntity? customProperties});

  $CustomPropertiesEntityCopyWith<$Res>? get customProperties;
}

/// @nodoc
class _$AttributeEntityCopyWithImpl<$Res, $Val extends AttributeEntity>
    implements $AttributeEntityCopyWith<$Res> {
  _$AttributeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? values = freezed,
    Object? id = null,
    Object? customProperties = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ValueEntity>?,
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

  /// Create a copy of AttributeEntity
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
abstract class _$$AttributeEntityImplCopyWith<$Res>
    implements $AttributeEntityCopyWith<$Res> {
  factory _$$AttributeEntityImplCopyWith(_$AttributeEntityImpl value,
          $Res Function(_$AttributeEntityImpl) then) =
      __$$AttributeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      List<ValueEntity>? values,
      int id,
      CustomPropertiesEntity? customProperties});

  @override
  $CustomPropertiesEntityCopyWith<$Res>? get customProperties;
}

/// @nodoc
class __$$AttributeEntityImplCopyWithImpl<$Res>
    extends _$AttributeEntityCopyWithImpl<$Res, _$AttributeEntityImpl>
    implements _$$AttributeEntityImplCopyWith<$Res> {
  __$$AttributeEntityImplCopyWithImpl(
      _$AttributeEntityImpl _value, $Res Function(_$AttributeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttributeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? values = freezed,
    Object? id = null,
    Object? customProperties = freezed,
  }) {
    return _then(_$AttributeEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ValueEntity>?,
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

class _$AttributeEntityImpl implements _AttributeEntity {
  _$AttributeEntityImpl(
      {required this.name,
      required final List<ValueEntity>? values,
      required this.id,
      required this.customProperties})
      : _values = values;

  @override
  final String? name;
  final List<ValueEntity>? _values;
  @override
  List<ValueEntity>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int id;
  @override
  final CustomPropertiesEntity? customProperties;

  @override
  String toString() {
    return 'AttributeEntity(name: $name, values: $values, id: $id, customProperties: $customProperties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customProperties, customProperties) ||
                other.customProperties == customProperties));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_values), id, customProperties);

  /// Create a copy of AttributeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeEntityImplCopyWith<_$AttributeEntityImpl> get copyWith =>
      __$$AttributeEntityImplCopyWithImpl<_$AttributeEntityImpl>(
          this, _$identity);
}

abstract class _AttributeEntity implements AttributeEntity {
  factory _AttributeEntity(
          {required final String? name,
          required final List<ValueEntity>? values,
          required final int id,
          required final CustomPropertiesEntity? customProperties}) =
      _$AttributeEntityImpl;

  @override
  String? get name;
  @override
  List<ValueEntity>? get values;
  @override
  int get id;
  @override
  CustomPropertiesEntity? get customProperties;

  /// Create a copy of AttributeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeEntityImplCopyWith<_$AttributeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
