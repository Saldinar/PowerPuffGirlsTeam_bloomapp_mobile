import 'package:amamini_client/features/domain/entity/return_request/return_request_entity.dart';
import 'package:amamini_client/features/domain/use_case/return_requests/return_requests_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'all_return_requests_event.dart';
part 'all_return_requests_state.dart';

class AllReturnRequestsBloc
    extends Bloc<AllReturnRequestsEvent, AllReturnRequestsState> {
  final ReturnRequestsUseCase _useCase;
  AllReturnRequestsBloc(this._useCase) : super(AllReturnRequestsInitial()) {
    on<GetAllReturnRequestsEvent>(_getReturnRequests);
  }
  Future<void> _getReturnRequests(
    GetAllReturnRequestsEvent event,
    Emitter<AllReturnRequestsState> emit,
  ) async {
    emit(AllReturnRequestsLoading());
    final result = await _useCase.getReturnRequests();
    result.fold(
      (failure) => emit(AllReturnRequestsError(message: failure.message)),
      (success) => emit(AllReturnRequestsLoaded(returnRequests: success)),
    );
  }
}
