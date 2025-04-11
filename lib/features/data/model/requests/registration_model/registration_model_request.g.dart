// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationModelRequest _$RegistrationModelRequestFromJson(
        Map<String, dynamic> json) =>
    RegistrationModelRequest(
      model: json['model'] == null
          ? null
          : CustomerInfoResponse.fromJson(
              json['model'] as Map<String, dynamic>),
      form: json['form'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['form'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegistrationModelRequestToJson(
        RegistrationModelRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'form': instance.form,
    };
