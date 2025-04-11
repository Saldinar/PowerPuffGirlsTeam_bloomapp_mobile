import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/domain/use_case/customer/customer_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'customer_info_event.dart';
part 'customer_info_state.dart';

class CustomerInfoBloc extends Bloc<CustomerInfoEvent, CustomerInfoState> {
  final CustomerUseCase _customerUseCase;
  CustomerInfoBloc(this._customerUseCase) : super(CustomerInfoInitial()) {
    on<GetCustomerInfoEvent>(_getCustomerInfo);
  }
  Future<void> _getCustomerInfo(
    GetCustomerInfoEvent event,
    Emitter<CustomerInfoState> emit,
  ) async {
    if (state is! CustomerInfoLoaded) {
      emit(CustomerInfoLoading());
    }
    final result = await _customerUseCase.getCustomerInfo();
    result.fold(
      (failure) => emit(CustomerInfoError(message: failure.message)),
      (success) => emit(CustomerInfoLoaded(customerInfo: success)),
    );
  }
}
