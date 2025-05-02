import 'package:bloom/domain/entity/register/register_request_entity.dart';
import 'package:bloom/domain/use_case/auth/auth_use_case.dart';
import 'package:bloom/domain/use_case/user_local_use_case/user_local_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cycle_event.dart';
part 'cycle_state.dart';

class CycleBloc extends Bloc<CycleEvent, CycleState> {
  CycleBloc(
    this._authUseCase,
    this._userLocalUseCase,
  ) : super(RegisterInitial()) {
    on<RegisterUserEvent>(_authUserEvent);
  }

  final RegisterUseCase _authUseCase;
  final UserLocalUseCase _userLocalUseCase;

  Future<void> _authUserEvent(
    RegisterUserEvent event,
    Emitter<CycleState> emit,
  ) async {
    emit(RegisterInProgress());

    final result = await _authUseCase.register(event.request);

    result.fold(
      (left) {
        emit(RegisterFailure(message: left.message));
      },
      (right) {
        _userLocalUseCase.saveToken(right.token);

        emit(RegisterSuccess());
      },
    );
  }
}
