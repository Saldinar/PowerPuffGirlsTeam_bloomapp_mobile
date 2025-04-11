import 'package:equatable/equatable.dart';

class CustomValues extends Equatable {
  final String? additionalProp1;
  final String? additionalProp2;
  final String? additionalProp3;

  const CustomValues({
    this.additionalProp1,
    this.additionalProp2,
    this.additionalProp3,
  });

  factory CustomValues.fromJson(Map<String, dynamic> json) => CustomValues(
        additionalProp1: json['additionalProp1'] as String?,
        additionalProp2: json['additionalProp2'] as String?,
        additionalProp3: json['additionalProp3'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'additionalProp1': additionalProp1,
        'additionalProp2': additionalProp2,
        'additionalProp3': additionalProp3,
      };

  CustomValues copyWith({
    String? additionalProp1,
    String? additionalProp2,
    String? additionalProp3,
  }) {
    return CustomValues(
      additionalProp1: additionalProp1 ?? this.additionalProp1,
      additionalProp2: additionalProp2 ?? this.additionalProp2,
      additionalProp3: additionalProp3 ?? this.additionalProp3,
    );
  }

  @override
  List<Object?> get props {
    return [
      additionalProp1,
      additionalProp2,
      additionalProp3,
    ];
  }
}
