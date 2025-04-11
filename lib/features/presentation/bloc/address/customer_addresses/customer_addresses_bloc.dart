import 'package:amamini_client/features/domain/entity/address/customer_addresses_entity.dart';
import 'package:amamini_client/features/domain/use_case/address/address_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'customer_addresses_event.dart';
part 'customer_addresses_state.dart';

class CustomerAddressesBloc
    extends Bloc<CustomerAddressesEvent, CustomerAddressesState> {
  final AddressUseCase _addressUseCase;
  CustomerAddressesBloc(this._addressUseCase)
      : super(CustomerAddressesInitial()) {
    on<GetCustomerAddressesEvent>(_getAddresses);
  }
  Future<void> _getAddresses(
    GetCustomerAddressesEvent event,
    Emitter<CustomerAddressesState> emit,
  ) async {
    emit(CustomerAddressesLoading());
    final result = await _addressUseCase.getCustomerAddresses();
    result.fold(
      (failure) => emit(CustomerAddressesError(message: failure.message)),
      (success) => emit(CustomerAddressesLoaded(customerAddresses: success)),
    );
  }
}
