import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cycle_response.g.dart';

@JsonSerializable()
class Profile {
  @JsonKey(name: 'last_period_date')
  final String lastPeriodDate;

  @JsonKey(name: 'cycle_length')
  final int cycleLength;

  @JsonKey(name: 'period_length')
  final int periodLength;

  @JsonKey(name: 'age')
  final int age;

  const Profile({
    required this.lastPeriodDate,
    required this.cycleLength,
    required this.periodLength,
    required this.age,
  });

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}

@JsonSerializable()
class UserResponse {
  final int id;
  final String username;
  final String email;
  final Profile profile;
  final int age;

  const UserResponse({
    required this.id,
    required this.username,
    required this.email,
    required this.profile,
    required this.age,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
