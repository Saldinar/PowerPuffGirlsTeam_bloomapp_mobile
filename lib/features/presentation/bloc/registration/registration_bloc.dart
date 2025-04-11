import 'package:amamini_client/features/domain/entity/customer/customer_info_entity/customer_info_entity.dart';
import 'package:amamini_client/features/domain/entity/registration_model/registration_model_entity.dart';
import 'package:amamini_client/features/domain/use_case/customer/customer_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final CustomerUseCase _customerUseCase;
  RegistrationBloc(this._customerUseCase) : super(RegistrationInitial()) {
    on<RegisterCustomerEvent>(_registerCustomer);
  }
  Future<void> _registerCustomer(
    RegisterCustomerEvent event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(RegistrationLoading());
    final result = await _customerUseCase.registerCustomer(event.request);
    result.fold(
      (failure) => emit(RegistrationError(message: failure.message)),
      (success) => emit(RegistrationLoaded(customerInfo: success)),
    );
  }
}
