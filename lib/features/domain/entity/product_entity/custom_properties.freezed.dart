// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_properties.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomPropertiesEntity {
  String? get additionalProp1 => throw _privateConstructorUsedError;
  String? get additionalProp2 => throw _privateConstructorUsedError;
  String? get additionalProp3 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomPropertiesEntityCopyWith<CustomPropertiesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomPropertiesEntityCopyWith<$Res> {
  factory $CustomPropertiesEntityCopyWith(CustomPropertiesEntity value,
          $Res Function(CustomPropertiesEntity) then) =
      _$CustomPropertiesEntityCopyWithImpl<$Res, CustomPropertiesEntity>;
  @useResult
  $Res call(
      {String? additionalProp1,
      String? additionalProp2,
      String? additionalProp3});
}

/// @nodoc
class _$CustomPropertiesEntityCopyWithImpl<$Res,
        $Val extends CustomPropertiesEntity>
    implements $CustomPropertiesEntityCopyWith<$Res> {
  _$CustomPropertiesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalProp1 = freezed,
    Object? additionalProp2 = freezed,
    Object? additionalProp3 = freezed,
  }) {
    return _then(_value.copyWith(
      additionalProp1: freezed == additionalProp1
          ? _value.additionalProp1
          : additionalProp1 // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalProp2: freezed == additionalProp2
          ? _value.additionalProp2
          : additionalProp2 // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalProp3: freezed == additionalProp3
          ? _value.additionalProp3
          : additionalProp3 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomPropertiesEntityImplCopyWith<$Res>
    implements $CustomPropertiesEntityCopyWith<$Res> {
  factory _$$CustomPropertiesEntityImplCopyWith(
          _$CustomPropertiesEntityImpl value,
          $Res Function(_$CustomPropertiesEntityImpl) then) =
      __$$CustomPropertiesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? additionalProp1,
      String? additionalProp2,
      String? additionalProp3});
}

/// @nodoc
class __$$CustomPropertiesEntityImplCopyWithImpl<$Res>
    extends _$CustomPropertiesEntityCopyWithImpl<$Res,
        _$CustomPropertiesEntityImpl>
    implements _$$CustomPropertiesEntityImplCopyWith<$Res> {
  __$$CustomPropertiesEntityImplCopyWithImpl(
      _$CustomPropertiesEntityImpl _value,
      $Res Function(_$CustomPropertiesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalProp1 = freezed,
    Object? additionalProp2 = freezed,
    Object? additionalProp3 = freezed,
  }) {
    return _then(_$CustomPropertiesEntityImpl(
      additionalProp1: freezed == additionalProp1
          ? _value.additionalProp1
          : additionalProp1 // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalProp2: freezed == additionalProp2
          ? _value.additionalProp2
          : additionalProp2 // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalProp3: freezed == additionalProp3
          ? _value.additionalProp3
          : additionalProp3 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomPropertiesEntityImpl implements _CustomPropertiesEntity {
  _$CustomPropertiesEntityImpl(
      {required this.additionalProp1,
      required this.additionalProp2,
      required this.additionalProp3});

  @override
  final String? additionalProp1;
  @override
  final String? additionalProp2;
  @override
  final String? additionalProp3;

  @override
  String toString() {
    return 'CustomPropertiesEntity(additionalProp1: $additionalProp1, additionalProp2: $additionalProp2, additionalProp3: $additionalProp3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomPropertiesEntityImpl &&
            (identical(other.additionalProp1, additionalProp1) ||
                other.additionalProp1 == additionalProp1) &&
            (identical(other.additionalProp2, additionalProp2) ||
                other.additionalProp2 == additionalProp2) &&
            (identical(other.additionalProp3, additionalProp3) ||
                other.additionalProp3 == additionalProp3));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, additionalProp1, additionalProp2, additionalProp3);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomPropertiesEntityImplCopyWith<_$CustomPropertiesEntityImpl>
      get copyWith => __$$CustomPropertiesEntityImplCopyWithImpl<
          _$CustomPropertiesEntityImpl>(this, _$identity);
}

abstract class _CustomPropertiesEntity implements CustomPropertiesEntity {
  factory _CustomPropertiesEntity(
      {required final String? additionalProp1,
      required final String? additionalProp2,
      required final String? additionalProp3}) = _$CustomPropertiesEntityImpl;

  @override
  String? get additionalProp1;
  @override
  String? get additionalProp2;
  @override
  String? get additionalProp3;
  @override
  @JsonKey(ignore: true)
  _$$CustomPropertiesEntityImplCopyWith<_$CustomPropertiesEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
