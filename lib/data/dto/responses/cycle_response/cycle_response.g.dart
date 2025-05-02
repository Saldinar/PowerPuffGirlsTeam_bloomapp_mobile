// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      lastPeriodDate: json['last_period_date'] as String,
      cycleLength: (json['cycle_length'] as num).toInt(),
      periodLength: (json['period_length'] as num).toInt(),
      age: (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'last_period_date': instance.lastPeriodDate,
      'cycle_length': instance.cycleLength,
      'period_length': instance.periodLength,
      'age': instance.age,
    };

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
      profile: Profile.fromJson(json['profile'] as Map<String, dynamic>),
      age: (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'profile': instance.profile,
      'age': instance.age,
    };
