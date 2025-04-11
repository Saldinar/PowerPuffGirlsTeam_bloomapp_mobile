import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/available_view_mode.dart';
import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/catalog_products_model.dart';
import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class ModelEntity extends Equatable {
  final String? q;
  final int? cid;
  final bool? isc;
  final int? mid;
  final int? vid;
  final bool? sid;
  final bool? advs;
  final bool? asv;
  final CatalogProductsModelEntity? catalogProductsModel;
  final List<AvailableViewModeEntity>? availableCategories;
  final List<AvailableViewModeEntity>? availableManufacturers;
  final List<AvailableViewModeEntity>? availableVendors;
  final CustomPropertiesEntity? customProperties;

  const ModelEntity({
    this.q,
    this.cid,
    this.isc,
    this.mid,
    this.vid,
    this.sid,
    this.advs,
    this.asv,
    this.catalogProductsModel,
    this.availableCategories,
    this.availableManufacturers,
    this.availableVendors,
    this.customProperties,
  });

  ModelEntity copyWith({
    String? q,
    int? cid,
    bool? isc,
    int? mid,
    int? vid,
    bool? sid,
    bool? advs,
    bool? asv,
    CatalogProductsModelEntity? catalogProductsModel,
    List<AvailableViewModeEntity>? availableCategories,
    List<AvailableViewModeEntity>? availableManufacturers,
    List<AvailableViewModeEntity>? availableVendors,
    CustomPropertiesEntity? customProperties,
  }) {
    return ModelEntity(
      q: q ?? this.q,
      cid: cid ?? this.cid,
      isc: isc ?? this.isc,
      mid: mid ?? this.mid,
      vid: vid ?? this.vid,
      sid: sid ?? this.sid,
      advs: advs ?? this.advs,
      asv: asv ?? this.asv,
      catalogProductsModel: catalogProductsModel ?? this.catalogProductsModel,
      availableCategories: availableCategories ?? this.availableCategories,
      availableManufacturers:
          availableManufacturers ?? this.availableManufacturers,
      availableVendors: availableVendors ?? this.availableVendors,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      q,
      cid,
      isc,
      mid,
      vid,
      sid,
      advs,
      asv,
      catalogProductsModel,
      availableCategories,
      availableManufacturers,
      availableVendors,
      customProperties,
    ];
  }
}
