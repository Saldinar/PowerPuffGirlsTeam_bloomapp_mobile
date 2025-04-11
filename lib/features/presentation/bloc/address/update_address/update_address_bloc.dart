import 'package:amamini_client/features/domain/entity/address/add_address_entity.dart';
import 'package:amamini_client/features/domain/use_case/address/address_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'update_address_event.dart';
part 'update_address_state.dart';

class UpdateAddressBloc extends Bloc<UpdateAddressEvent, UpdateAddressState> {
  final AddressUseCase _addressUseCase;
  UpdateAddressBloc(this._addressUseCase) : super(UpdateAddressInitial()) {
    on<UpdateAddressDetailsEvent>(_updateAddressDetails);
  }
  Future<void> _updateAddressDetails(
    UpdateAddressDetailsEvent event,
    Emitter<UpdateAddressState> emit,
  ) async {
    emit(UpdateAddressLoading());
    final result = await _addressUseCase.updateAddressDetails(event.request);
    result.fold(
      (failure) => emit(UpdateAddressError(message: failure.message)),
      (_) => emit(UpdateAddressLoaded()),
    );
  }
}
