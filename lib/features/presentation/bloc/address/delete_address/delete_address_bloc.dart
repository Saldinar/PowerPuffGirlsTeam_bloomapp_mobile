import 'package:amamini_client/features/domain/use_case/address/address_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'delete_address_event.dart';
part 'delete_address_state.dart';

class DeleteAddressBloc extends Bloc<DeleteAddressEvent, DeleteAddressState> {
  final AddressUseCase _addressUseCase;
  DeleteAddressBloc(this._addressUseCase) : super(DeleteAddressInitial()) {
    on<DeleteCurrentAddressEvent>(_deleteAddress);
  }
  Future<void> _deleteAddress(
    DeleteCurrentAddressEvent event,
    Emitter<DeleteAddressState> emit,
  ) async {
    emit(DeleteAddressLoading());
    final result = await _addressUseCase.deleteAddress(event.addressId);
    result.fold(
      (failure) => emit(DeleteAddressError(message: failure.message)),
      (success) => emit(DeleteAddressLoaded()),
    );
  }
}
