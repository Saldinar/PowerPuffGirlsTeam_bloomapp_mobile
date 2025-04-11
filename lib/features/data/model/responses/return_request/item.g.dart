// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnRequestItemResponse _$ReturnRequestItemResponseFromJson(
        Map<String, dynamic> json) =>
    ReturnRequestItemResponse(
      customNumber: json['custom_number'] as String?,
      returnRequestStatus: json['return_request_status'] as String?,
      productId: (json['product_id'] as num?)?.toInt(),
      productName: json['product_name'] as String?,
      productSeName: json['product_se_name'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      returnReason: json['return_reason'] as String?,
      returnAction: json['return_action'] as String?,
      comments: json['comments'] as String?,
      uploadedFileGuid: json['uploaded_file_guid'] as String?,
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReturnRequestItemResponseToJson(
        ReturnRequestItemResponse instance) =>
    <String, dynamic>{
      'custom_number': instance.customNumber,
      'return_request_status': instance.returnRequestStatus,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_se_name': instance.productSeName,
      'quantity': instance.quantity,
      'return_reason': instance.returnReason,
      'return_action': instance.returnAction,
      'comments': instance.comments,
      'uploaded_file_guid': instance.uploadedFileGuid,
      'created_on': instance.createdOn?.toIso8601String(),
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
