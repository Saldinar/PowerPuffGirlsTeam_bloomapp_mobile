// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_overview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewOverviewModelEntity {
  int? get productId => throw _privateConstructorUsedError;
  int? get ratingSum => throw _privateConstructorUsedError;
  int? get totalReviews => throw _privateConstructorUsedError;
  bool? get allowCustomerReviews => throw _privateConstructorUsedError;
  bool? get canAddNewReview => throw _privateConstructorUsedError;
  CustomPropertiesEntity? get customProperties =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewOverviewModelEntityCopyWith<ReviewOverviewModelEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewOverviewModelEntityCopyWith<$Res> {
  factory $ReviewOverviewModelEntityCopyWith(ReviewOverviewModelEntity value,
          $Res Function(ReviewOverviewModelEntity) then) =
      _$ReviewOverviewModelEntityCopyWithImpl<$Res, ReviewOverviewModelEntity>;
  @useResult
  $Res call(
      {int? productId,
      int? ratingSum,
      int? totalReviews,
      bool? allowCustomerReviews,
      bool? canAddNewReview,
      CustomPropertiesEntity? customProperties});

  $CustomPropertiesEntityCopyWith<$Res>? get customProperties;
}

/// @nodoc
class _$ReviewOverviewModelEntityCopyWithImpl<$Res,
        $Val extends ReviewOverviewModelEntity>
    implements $ReviewOverviewModelEntityCopyWith<$Res> {
  _$ReviewOverviewModelEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? ratingSum = freezed,
    Object? totalReviews = freezed,
    Object? allowCustomerReviews = freezed,
    Object? canAddNewReview = freezed,
    Object? customProperties = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingSum: freezed == ratingSum
          ? _value.ratingSum
          : ratingSum // ignore: cast_nullable_to_non_nullable
              as int?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      allowCustomerReviews: freezed == allowCustomerReviews
          ? _value.allowCustomerReviews
          : allowCustomerReviews // ignore: cast_nullable_to_non_nullable
              as bool?,
      canAddNewReview: freezed == canAddNewReview
          ? _value.canAddNewReview
          : canAddNewReview // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$ReviewOverviewModelEntityImplCopyWith<$Res>
    implements $ReviewOverviewModelEntityCopyWith<$Res> {
  factory _$$ReviewOverviewModelEntityImplCopyWith(
          _$ReviewOverviewModelEntityImpl value,
          $Res Function(_$ReviewOverviewModelEntityImpl) then) =
      __$$ReviewOverviewModelEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? productId,
      int? ratingSum,
      int? totalReviews,
      bool? allowCustomerReviews,
      bool? canAddNewReview,
      CustomPropertiesEntity? customProperties});

  @override
  $CustomPropertiesEntityCopyWith<$Res>? get customProperties;
}

/// @nodoc
class __$$ReviewOverviewModelEntityImplCopyWithImpl<$Res>
    extends _$ReviewOverviewModelEntityCopyWithImpl<$Res,
        _$ReviewOverviewModelEntityImpl>
    implements _$$ReviewOverviewModelEntityImplCopyWith<$Res> {
  __$$ReviewOverviewModelEntityImplCopyWithImpl(
      _$ReviewOverviewModelEntityImpl _value,
      $Res Function(_$ReviewOverviewModelEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? ratingSum = freezed,
    Object? totalReviews = freezed,
    Object? allowCustomerReviews = freezed,
    Object? canAddNewReview = freezed,
    Object? customProperties = freezed,
  }) {
    return _then(_$ReviewOverviewModelEntityImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingSum: freezed == ratingSum
          ? _value.ratingSum
          : ratingSum // ignore: cast_nullable_to_non_nullable
              as int?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      allowCustomerReviews: freezed == allowCustomerReviews
          ? _value.allowCustomerReviews
          : allowCustomerReviews // ignore: cast_nullable_to_non_nullable
              as bool?,
      canAddNewReview: freezed == canAddNewReview
          ? _value.canAddNewReview
          : canAddNewReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      customProperties: freezed == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as CustomPropertiesEntity?,
    ));
  }
}

/// @nodoc

class _$ReviewOverviewModelEntityImpl implements _ReviewOverviewModelEntity {
  _$ReviewOverviewModelEntityImpl(
      {required this.productId,
      required this.ratingSum,
      required this.totalReviews,
      required this.allowCustomerReviews,
      required this.canAddNewReview,
      required this.customProperties});

  @override
  final int? productId;
  @override
  final int? ratingSum;
  @override
  final int? totalReviews;
  @override
  final bool? allowCustomerReviews;
  @override
  final bool? canAddNewReview;
  @override
  final CustomPropertiesEntity? customProperties;

  @override
  String toString() {
    return 'ReviewOverviewModelEntity(productId: $productId, ratingSum: $ratingSum, totalReviews: $totalReviews, allowCustomerReviews: $allowCustomerReviews, canAddNewReview: $canAddNewReview, customProperties: $customProperties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewOverviewModelEntityImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.ratingSum, ratingSum) ||
                other.ratingSum == ratingSum) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.allowCustomerReviews, allowCustomerReviews) ||
                other.allowCustomerReviews == allowCustomerReviews) &&
            (identical(other.canAddNewReview, canAddNewReview) ||
                other.canAddNewReview == canAddNewReview) &&
            (identical(other.customProperties, customProperties) ||
                other.customProperties == customProperties));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, ratingSum,
      totalReviews, allowCustomerReviews, canAddNewReview, customProperties);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewOverviewModelEntityImplCopyWith<_$ReviewOverviewModelEntityImpl>
      get copyWith => __$$ReviewOverviewModelEntityImplCopyWithImpl<
          _$ReviewOverviewModelEntityImpl>(this, _$identity);
}

abstract class _ReviewOverviewModelEntity implements ReviewOverviewModelEntity {
  factory _ReviewOverviewModelEntity(
          {required final int? productId,
          required final int? ratingSum,
          required final int? totalReviews,
          required final bool? allowCustomerReviews,
          required final bool? canAddNewReview,
          required final CustomPropertiesEntity? customProperties}) =
      _$ReviewOverviewModelEntityImpl;

  @override
  int? get productId;
  @override
  int? get ratingSum;
  @override
  int? get totalReviews;
  @override
  bool? get allowCustomerReviews;
  @override
  bool? get canAddNewReview;
  @override
  CustomPropertiesEntity? get customProperties;
  @override
  @JsonKey(ignore: true)
  _$$ReviewOverviewModelEntityImplCopyWith<_$ReviewOverviewModelEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
