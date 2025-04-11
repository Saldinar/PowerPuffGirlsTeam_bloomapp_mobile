import 'package:amamini_client/features/domain/entity/auth/auth_request_entity.dart';
import 'package:amamini_client/features/domain/use_case/auth/auth_use_case.dart';
import 'package:amamini_client/features/domain/use_case/customer/customer_use_case.dart';
import 'package:amamini_client/features/domain/use_case/user_local_use_case/user_local_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase _authUseCase;
  final UserLocalUseCase _userLocalUseCase;
  final CustomerUseCase _customerUseCase;
  AuthBloc(this._authUseCase, this._userLocalUseCase, this._customerUseCase)
      : super(AuthInitial()) {
    on<AuthCustomerEvent>(_authCustomer);
    on<CheckCustomerAuthEvent>(_checkUserAuth);
    on<LogOutEvent>(_logOut);
    on<CheckUserStatusEvent>(_checkUserStatus);
    on<GetTokenEvent>(_getTokenEvent);
  }

  Future<void> _authCustomer(
    AuthCustomerEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final result = await _authUseCase.authCustomer(event.request);
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (success) {
        _userLocalUseCase
          ..saveToken(success.token)
          ..saveUserStatus(event.request.isGuest);
        emit(AuthLoaded());
      },
    );
  }

  Future<void> _getTokenEvent(
    GetTokenEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result =
        await _authUseCase.authCustomer(AuthRequestEntity(isGuest: true));
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (success) async {
        _userLocalUseCase
          ..saveToken(success.token)
          ..saveUserStatus(true);
        emit(GuestLoaded());
      },
    );
  }

  Future<void> _checkUserAuth(
    CheckCustomerAuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    final authToken = await _userLocalUseCase.getToken();
    if (authToken == null) {
      add(GetTokenEvent());
    }
  }

  Future<void> _checkUserStatus(
    CheckUserStatusEvent event,
    Emitter<AuthState> emit,
  ) async {
    final isGuest = await _userLocalUseCase.getUserStatus();
    if (isGuest == false) {
      emit(AuthLoaded());
    } else if (isGuest != false) {
      emit(GuestLoaded());
    }
  }

  Future<void> _logOut(
    LogOutEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _customerUseCase.logOut();
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (success) {
        _userLocalUseCase
          ..deleteToken()
          ..deleteUserStatus();
        add(GetTokenEvent());
      },
    );
  }
}
