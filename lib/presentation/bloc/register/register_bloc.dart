import 'package:bloom/domain/entity/auth/auth_request_entity.dart';
import 'package:bloom/domain/entity/register/register_request_entity.dart';
import 'package:bloom/domain/use_case/auth/auth_use_case.dart';
import 'package:bloom/domain/use_case/user_local_use_case/user_local_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(
    this._authUseCase,
    this._userLocalUseCase,
  ) : super(RegisterInitial()) {
    on<RegisterUserEvent>(_authUserEvent);
  }

  final RegisterUseCase _authUseCase;
  final UserLocalUseCase _userLocalUseCase;

  Future<void> _authUserEvent(
    RegisterUserEvent event,
    Emitter<RegisterState> emit,
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

  // Future<void> _getTokenEvent(
  //   GetTokenEvent event,
  //   Emitter<RegisterState> emit,
  // ) async {
  //   final result = await _authUseCase.register(RegisterRequestEntity(isGuest: true));
  //   result.fold(
  //     (failure) => emit(AuthFailure(message: failure.message)),
  //     (success) async {
  //       _userLocalUseCase
  //         ..saveToken(success.token)
  //         ..saveUserStatus(true);
  //       emit(GuestLoaded());
  //     },
  //   );
  // }
}
