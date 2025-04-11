// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/entity/manufacturer/manufacturer_entity/manufacturer_entity.dart';
import 'package:amamini_client/features/domain/use_case/manufacturer/manufacturer_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'all_manufacturers_event.dart';
part 'all_manufacturers_state.dart';

class AllManufacturersBloc
    extends Bloc<AllManufacturersEvent, AllManufacturersState> {
  final ManufacturerUseCase _manufacturerUseCase;
  AllManufacturersBloc(this._manufacturerUseCase)
      : super(AllManufacturersInitial()) {
    on<GetAllManufacturersEvent>(_getAllManufacturers);
  }
  Future<void> _getAllManufacturers(
    GetAllManufacturersEvent event,
    Emitter<AllManufacturersState> emit,
  ) async {
    emit(AllManufacturersLoading());
    final result = await _manufacturerUseCase.getAllManufacturers();
    result.fold(
      (failure) => emit(AllManufacturersError(message: failure.message)),
      (data) => emit(AllManufacturersLoaded(manufacturers: data)),
    );
  }
}
