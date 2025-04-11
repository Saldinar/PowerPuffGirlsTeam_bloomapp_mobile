import 'package:amamini_client/features/domain/entity/change_password/change_password_entity.dart';
import 'package:amamini_client/features/domain/use_case/customer/customer_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final CustomerUseCase _customerUseCase;
  ChangePasswordBloc(this._customerUseCase) : super(ChangePasswordInitial()) {
    on<ChangeCustomerPasswordEvent>(_changePassword);
  }
  Future<void> _changePassword(
    ChangeCustomerPasswordEvent event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(ChangePasswordLoading());
    final result = await _customerUseCase.changePassword(event.request);
    result.fold(
      (failure) => emit(ChangePasswordError(message: failure.message)),
      (success) => emit(ChangePasswordLoaded()),
    );
  }
}
