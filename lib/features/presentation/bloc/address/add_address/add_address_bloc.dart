import 'package:amamini_client/features/domain/entity/address/add_address_entity.dart';
import 'package:amamini_client/features/domain/use_case/address/address_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_address_event.dart';
part 'add_address_state.dart';

class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  final AddressUseCase _addressUseCase;
  AddAddressBloc(this._addressUseCase) : super(AddAddressInitial()) {
    on<AddNewAddressEvent>(_addAddress);
  }
  Future<void> _addAddress(
    AddNewAddressEvent event,
    Emitter<AddAddressState> emit,
  ) async {
    emit(AddAddressLoading());
    final result = await _addressUseCase.addAddressEntity(event.request);
    result.fold(
      (failure) => emit(AddAddressError(message: failure.message)),
      (_) => emit(AddAddressLoaded()),
    );
  }
}
