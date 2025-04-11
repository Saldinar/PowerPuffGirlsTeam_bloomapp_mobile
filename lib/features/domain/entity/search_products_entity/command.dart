import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class CommandEntity extends Equatable {
  final String? price;
  final List<int>? specificationOptionIds;
  final List<int>? manufacturerIds;
  final int? orderBy;
  final String? viewMode;
  final int? pageIndex;
  final int? pageNumber;
  final int? pageSize;
  final int? totalItems;
  final int? totalPages;
  final int? firstItem;
  final int? lastItem;
  final bool? hasPreviousPage;
  final bool? hasNextPage;
  final CustomPropertiesEntity? customProperties;

  const CommandEntity({
    this.price,
    this.specificationOptionIds,
    this.manufacturerIds,
    this.orderBy,
    this.viewMode,
    this.pageIndex,
    this.pageNumber,
    this.pageSize,
    this.totalItems,
    this.totalPages,
    this.firstItem,
    this.lastItem,
    this.hasPreviousPage,
    this.hasNextPage,
    this.customProperties,
  });

  CommandEntity copyWith({
    String? price,
    List<int>? specificationOptionIds,
    List<int>? manufacturerIds,
    int? orderBy,
    String? viewMode,
    int? pageIndex,
    int? pageNumber,
    int? pageSize,
    int? totalItems,
    int? totalPages,
    int? firstItem,
    int? lastItem,
    bool? hasPreviousPage,
    bool? hasNextPage,
    CustomPropertiesEntity? customProperties,
  }) {
    return CommandEntity(
      price: price ?? this.price,
      specificationOptionIds:
          specificationOptionIds ?? this.specificationOptionIds,
      manufacturerIds: manufacturerIds ?? this.manufacturerIds,
      orderBy: orderBy ?? this.orderBy,
      viewMode: viewMode ?? this.viewMode,
      pageIndex: pageIndex ?? this.pageIndex,
      pageNumber: pageNumber ?? this.pageNumber,
      pageSize: pageSize ?? this.pageSize,
      totalItems: totalItems ?? this.totalItems,
      totalPages: totalPages ?? this.totalPages,
      firstItem: firstItem ?? this.firstItem,
      lastItem: lastItem ?? this.lastItem,
      hasPreviousPage: hasPreviousPage ?? this.hasPreviousPage,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      price,
      specificationOptionIds,
      manufacturerIds,
      orderBy,
      viewMode,
      pageIndex,
      pageNumber,
      pageSize,
      totalItems,
      totalPages,
      firstItem,
      lastItem,
      hasPreviousPage,
      hasNextPage,
      customProperties,
    ];
  }
}
