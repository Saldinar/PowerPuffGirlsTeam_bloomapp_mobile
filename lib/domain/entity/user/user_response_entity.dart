import 'package:equatable/equatable.dart';

class UserResponseEntity extends Equatable {
  UserResponseEntity({
    required this.lastPeriodDate,
    required this.cycleLength,
    required this.periodLength,
    required this.age,
  });

  final String lastPeriodDate;
  final int cycleLength;
  final int periodLength;
  final int age;

  @override
  List<Object?> get props => [lastPeriodDate, cycleLength, periodLength, age];
}
