// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  String? get seName => throw _privateConstructorUsedError;
  String? get fullDescription => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get productType => throw _privateConstructorUsedError;
  bool get markAsNew => throw _privateConstructorUsedError;
  ProductPriceEntity get productPrice => throw _privateConstructorUsedError;
  List<DefaultPictureModelEntity> get defaultPictureModel =>
      throw _privateConstructorUsedError;
  ProductSpecificationModelEntity? get productSpecificationModel =>
      throw _privateConstructorUsedError;
  ReviewOverviewModelEntity? get reviewOverviewModel =>
      throw _privateConstructorUsedError;
  CustomPropertiesEntity? get customProperties =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res, ProductEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? shortDescription,
      String? seName,
      String? fullDescription,
      String? sku,
      String? productType,
      bool markAsNew,
      ProductPriceEntity productPrice,
      List<DefaultPictureModelEntity> defaultPictureModel,
      ProductSpecificationModelEntity? productSpecificationModel,
      ReviewOverviewModelEntity? reviewOverviewModel,
      CustomPropertiesEntity? customProperties});

  $ProductPriceEntityCopyWith<$Res> get productPrice;
  $ProductSpecificationModelEntityCopyWith<$Res>? get productSpecificationModel;
  $ReviewOverviewModelEntityCopyWith<$Res>? get reviewOverviewModel;
  $CustomPropertiesEntityCopyWith<$Res>? get customProperties;
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res, $Val extends ProductEntity>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortDescription = freezed,
    Object? seName = freezed,
    Object? fullDescription = freezed,
    Object? sku = freezed,
    Object? productType = freezed,
    Object? markAsNew = null,
    Object? productPrice = null,
    Object? defaultPictureModel = null,
    Object? productSpecificationModel = freezed,
    Object? reviewOverviewModel = freezed,
    Object? customProperties = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      seName: freezed == seName
          ? _value.seName
          : seName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullDescription: freezed == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String?,
      markAsNew: null == markAsNew
          ? _value.markAsNew
          : markAsNew // ignore: cast_nullable_to_non_nullable
              as bool,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as ProductPriceEntity,
      defaultPictureModel: null == defaultPictureModel
          ? _value.defaultPictureModel
          : defaultPictureModel // ignore: cast_nullable_to_non_nullable
              as List<DefaultPictureModelEntity>,
      productSpecificationModel: freezed == productSpecificationModel
          ? _value.productSpecificationModel
          : productSpecificationModel // ignore: cast_nullable_to_non_nullable
              as ProductSpecificationModelEntity?,
      reviewOverviewModel: freezed == reviewOverviewModel
          ? _value.reviewOverviewModel
          : reviewOverviewModel // ignore: cast_nullable_to_non_nullable
              as ReviewOverviewModelEntity?,
      customProperties: freezed == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as CustomPropertiesEntity?,
    ) as $Val);
  }

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductPriceEntityCopyWith<$Res> get productPrice {
    return $ProductPriceEntityCopyWith<$Res>(_value.productPrice, (value) {
      return _then(_value.copyWith(productPrice: value) as $Val);
    });
  }

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductSpecificationModelEntityCopyWith<$Res>?
      get productSpecificationModel {
    if (_value.productSpecificationModel == null) {
      return null;
    }

    return $ProductSpecificationModelEntityCopyWith<$Res>(
        _value.productSpecificationModel!, (value) {
      return _then(_value.copyWith(productSpecificationModel: value) as $Val);
    });
  }

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewOverviewModelEntityCopyWith<$Res>? get reviewOverviewModel {
    if (_value.reviewOverviewModel == null) {
      return null;
    }

    return $ReviewOverviewModelEntityCopyWith<$Res>(_value.reviewOverviewModel!,
        (value) {
      return _then(_value.copyWith(reviewOverviewModel: value) as $Val);
    });
  }

  /// Create a copy of ProductEntity
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
abstract class _$$ProductEntityImplCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$$ProductEntityImplCopyWith(
          _$ProductEntityImpl value, $Res Function(_$ProductEntityImpl) then) =
      __$$ProductEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? shortDescription,
      String? seName,
      String? fullDescription,
      String? sku,
      String? productType,
      bool markAsNew,
      ProductPriceEntity productPrice,
      List<DefaultPictureModelEntity> defaultPictureModel,
      ProductSpecificationModelEntity? productSpecificationModel,
      ReviewOverviewModelEntity? reviewOverviewModel,
      CustomPropertiesEntity? customProperties});

  @override
  $ProductPriceEntityCopyWith<$Res> get productPrice;
  @override
  $ProductSpecificationModelEntityCopyWith<$Res>? get productSpecificationModel;
  @override
  $ReviewOverviewModelEntityCopyWith<$Res>? get reviewOverviewModel;
  @override
  $CustomPropertiesEntityCopyWith<$Res>? get customProperties;
}

/// @nodoc
class __$$ProductEntityImplCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res, _$ProductEntityImpl>
    implements _$$ProductEntityImplCopyWith<$Res> {
  __$$ProductEntityImplCopyWithImpl(
      _$ProductEntityImpl _value, $Res Function(_$ProductEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortDescription = freezed,
    Object? seName = freezed,
    Object? fullDescription = freezed,
    Object? sku = freezed,
    Object? productType = freezed,
    Object? markAsNew = null,
    Object? productPrice = null,
    Object? defaultPictureModel = null,
    Object? productSpecificationModel = freezed,
    Object? reviewOverviewModel = freezed,
    Object? customProperties = freezed,
  }) {
    return _then(_$ProductEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      seName: freezed == seName
          ? _value.seName
          : seName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullDescription: freezed == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String?,
      markAsNew: null == markAsNew
          ? _value.markAsNew
          : markAsNew // ignore: cast_nullable_to_non_nullable
              as bool,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as ProductPriceEntity,
      defaultPictureModel: null == defaultPictureModel
          ? _value._defaultPictureModel
          : defaultPictureModel // ignore: cast_nullable_to_non_nullable
              as List<DefaultPictureModelEntity>,
      productSpecificationModel: freezed == productSpecificationModel
          ? _value.productSpecificationModel
          : productSpecificationModel // ignore: cast_nullable_to_non_nullable
              as ProductSpecificationModelEntity?,
      reviewOverviewModel: freezed == reviewOverviewModel
          ? _value.reviewOverviewModel
          : reviewOverviewModel // ignore: cast_nullable_to_non_nullable
              as ReviewOverviewModelEntity?,
      customProperties: freezed == customProperties
          ? _value.customProperties
          : customProperties // ignore: cast_nullable_to_non_nullable
              as CustomPropertiesEntity?,
    ));
  }
}

/// @nodoc

class _$ProductEntityImpl implements _ProductEntity {
  _$ProductEntityImpl(
      {required this.id,
      required this.name,
      required this.shortDescription,
      required this.seName,
      required this.fullDescription,
      required this.sku,
      required this.productType,
      required this.markAsNew,
      required this.productPrice,
      required final List<DefaultPictureModelEntity> defaultPictureModel,
      required this.productSpecificationModel,
      required this.reviewOverviewModel,
      required this.customProperties})
      : _defaultPictureModel = defaultPictureModel;

  @override
  final int id;
  @override
  final String name;
  @override
  final String? shortDescription;
  @override
  final String? seName;
  @override
  final String? fullDescription;
  @override
  final String? sku;
  @override
  final String? productType;
  @override
  final bool markAsNew;
  @override
  final ProductPriceEntity productPrice;
  final List<DefaultPictureModelEntity> _defaultPictureModel;
  @override
  List<DefaultPictureModelEntity> get defaultPictureModel {
    if (_defaultPictureModel is EqualUnmodifiableListView)
      return _defaultPictureModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultPictureModel);
  }

  @override
  final ProductSpecificationModelEntity? productSpecificationModel;
  @override
  final ReviewOverviewModelEntity? reviewOverviewModel;
  @override
  final CustomPropertiesEntity? customProperties;

  @override
  String toString() {
    return 'ProductEntity(id: $id, name: $name, shortDescription: $shortDescription, seName: $seName, fullDescription: $fullDescription, sku: $sku, productType: $productType, markAsNew: $markAsNew, productPrice: $productPrice, defaultPictureModel: $defaultPictureModel, productSpecificationModel: $productSpecificationModel, reviewOverviewModel: $reviewOverviewModel, customProperties: $customProperties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.seName, seName) || other.seName == seName) &&
            (identical(other.fullDescription, fullDescription) ||
                other.fullDescription == fullDescription) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.markAsNew, markAsNew) ||
                other.markAsNew == markAsNew) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            const DeepCollectionEquality()
                .equals(other._defaultPictureModel, _defaultPictureModel) &&
            (identical(other.productSpecificationModel,
                    productSpecificationModel) ||
                other.productSpecificationModel == productSpecificationModel) &&
            (identical(other.reviewOverviewModel, reviewOverviewModel) ||
                other.reviewOverviewModel == reviewOverviewModel) &&
            (identical(other.customProperties, customProperties) ||
                other.customProperties == customProperties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      shortDescription,
      seName,
      fullDescription,
      sku,
      productType,
      markAsNew,
      productPrice,
      const DeepCollectionEquality().hash(_defaultPictureModel),
      productSpecificationModel,
      reviewOverviewModel,
      customProperties);

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      __$$ProductEntityImplCopyWithImpl<_$ProductEntityImpl>(this, _$identity);
}

abstract class _ProductEntity implements ProductEntity {
  factory _ProductEntity(
      {required final int id,
      required final String name,
      required final String? shortDescription,
      required final String? seName,
      required final String? fullDescription,
      required final String? sku,
      required final String? productType,
      required final bool markAsNew,
      required final ProductPriceEntity productPrice,
      required final List<DefaultPictureModelEntity> defaultPictureModel,
      required final ProductSpecificationModelEntity? productSpecificationModel,
      required final ReviewOverviewModelEntity? reviewOverviewModel,
      required final CustomPropertiesEntity?
          customProperties}) = _$ProductEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get shortDescription;
  @override
  String? get seName;
  @override
  String? get fullDescription;
  @override
  String? get sku;
  @override
  String? get productType;
  @override
  bool get markAsNew;
  @override
  ProductPriceEntity get productPrice;
  @override
  List<DefaultPictureModelEntity> get defaultPictureModel;
  @override
  ProductSpecificationModelEntity? get productSpecificationModel;
  @override
  ReviewOverviewModelEntity? get reviewOverviewModel;
  @override
  CustomPropertiesEntity? get customProperties;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
