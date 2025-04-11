import 'package:equatable/equatable.dart';

class RouteValuesEntity extends Equatable {
  final int? pageNumber;

  const RouteValuesEntity({this.pageNumber});

  RouteValuesEntity copyWith({
    int? pageNumber,
  }) {
    return RouteValuesEntity(
      pageNumber: pageNumber ?? this.pageNumber,
    );
  }

  @override
  List<Object?> get props => [pageNumber];
}
