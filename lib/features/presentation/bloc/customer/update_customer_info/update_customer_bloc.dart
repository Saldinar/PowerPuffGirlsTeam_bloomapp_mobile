import 'package:amamini_client/features/domain/entity/registration_model/registration_model_entity.dart';
import 'package:amamini_client/features/domain/use_case/customer/customer_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'update_customer_event.dart';
part 'update_customer_state.dart';

class UpdateCustomerBloc
    extends Bloc<UpdateCustomerEvent, UpdateCustomerState> {
  final CustomerUseCase _customerUseCase;
  UpdateCustomerBloc(this._customerUseCase) : super(UpdateCustomerInitial()) {
    on<UpdateCustomerInfoEvent>(_updateCustomerInfo);
  }
  Future<void> _updateCustomerInfo(
    UpdateCustomerInfoEvent event,
    Emitter<UpdateCustomerState> emit,
  ) async {
    emit(UpdateCustomerLoading());
    final result = await _customerUseCase.updateCustomerInfo(event.request);
    result.fold(
      (failure) => emit(UpdateCustomerError(message: failure.message)),
      (success) => emit(UpdateCustomerLoaded()),
    );
  }
}
