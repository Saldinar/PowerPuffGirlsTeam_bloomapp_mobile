part of 'all_manufacturers_bloc.dart';

sealed class AllManufacturersEvent extends Equatable {
  const AllManufacturersEvent();

  @override
  List<Object> get props => [];
}

final class GetAllManufacturersEvent extends AllManufacturersEvent {}
