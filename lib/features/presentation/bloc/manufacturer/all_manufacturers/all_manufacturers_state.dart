// ignore_for_file: sort_constructors_first

part of 'all_manufacturers_bloc.dart';

sealed class AllManufacturersState extends Equatable {
  const AllManufacturersState();

  @override
  List<Object> get props => [];
}

final class AllManufacturersInitial extends AllManufacturersState {}

final class AllManufacturersLoading extends AllManufacturersState {}

final class AllManufacturersLoaded extends AllManufacturersState {
  final List<ManufacturerEntity> manufacturers;
  AllManufacturersLoaded({required this.manufacturers});
}

final class AllManufacturersError extends AllManufacturersState {
  final String message;
  AllManufacturersError({required this.message});
}
