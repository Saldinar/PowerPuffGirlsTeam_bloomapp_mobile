import 'package:amamini_client/features/domain/entity/address/add_address_model_entity.dart';
import 'package:amamini_client/features/domain/use_case/address/address_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'address_details_event.dart';
part 'address_details_state.dart';

class AddressDetailsBloc
    extends Bloc<AddressDetailsEvent, AddressDetailsState> {
  final AddressUseCase _addressUseCase;
  AddressDetailsBloc(this._addressUseCase) : super(AddressDetailsInitial()) {
    on<GetAddressDetailsEvent>(_getAddressDetails);
  }
  Future<void> _getAddressDetails(
    GetAddressDetailsEvent event,
    Emitter<AddressDetailsState> emit,
  ) async {
    emit(AddressDetailsLoading());
    final result = await _addressUseCase.getAddressDetails(event.addressId);
    result.fold(
      (failure) => emit(AddressDetailsError(message: failure.message)),
      (success) => emit(AddressDetailsLoaded(addressDetails: success)),
    );
  }
}
