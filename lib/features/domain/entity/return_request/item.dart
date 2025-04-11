import 'package:amamini_client/features/domain/entity/product/custom_properties.dart';
import 'package:equatable/equatable.dart';

class ReturnRequestItemEntity extends Equatable {
  final String? customNumber;
  final String? returnRequestStatus;
  final int? productId;
  final String? productName;
  final String? productSeName;
  final int? quantity;
  final String? returnReason;
  final String? returnAction;
  final String? comments;
  final String? uploadedFileGuid;
  final DateTime? createdOn;
  final int? id;
  final CustomPropertiesEntity? customProperties;

  const ReturnRequestItemEntity({
    this.customNumber,
    this.returnRequestStatus,
    this.productId,
    this.productName,
    this.productSeName,
    this.quantity,
    this.returnReason,
    this.returnAction,
    this.comments,
    this.uploadedFileGuid,
    this.createdOn,
    this.id,
    this.customProperties,
  });

  ReturnRequestItemEntity copyWith({
    String? customNumber,
    String? returnRequestStatus,
    int? productId,
    String? productName,
    String? productSeName,
    int? quantity,
    String? returnReason,
    String? returnAction,
    String? comments,
    String? uploadedFileGuid,
    DateTime? createdOn,
    int? id,
    CustomPropertiesEntity? customProperties,
  }) {
    return ReturnRequestItemEntity(
      customNumber: customNumber ?? this.customNumber,
      returnRequestStatus: returnRequestStatus ?? this.returnRequestStatus,
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      productSeName: productSeName ?? this.productSeName,
      quantity: quantity ?? this.quantity,
      returnReason: returnReason ?? this.returnReason,
      returnAction: returnAction ?? this.returnAction,
      comments: comments ?? this.comments,
      uploadedFileGuid: uploadedFileGuid ?? this.uploadedFileGuid,
      createdOn: createdOn ?? this.createdOn,
      id: id ?? this.id,
      customProperties: customProperties ?? this.customProperties,
    );
  }

  @override
  List<Object?> get props {
    return [
      customNumber,
      returnRequestStatus,
      productId,
      productName,
      productSeName,
      quantity,
      returnReason,
      returnAction,
      comments,
      uploadedFileGuid,
      createdOn,
      id,
      customProperties,
    ];
  }
}
