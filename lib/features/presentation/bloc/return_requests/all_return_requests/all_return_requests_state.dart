part of 'all_return_requests_bloc.dart';

sealed class AllReturnRequestsState extends Equatable {
  const AllReturnRequestsState();
}

final class AllReturnRequestsInitial extends AllReturnRequestsState {
  @override
  List<Object> get props => [];
}

final class AllReturnRequestsLoading extends AllReturnRequestsState {
  @override
  List<Object> get props => [];
}

final class AllReturnRequestsLoaded extends AllReturnRequestsState {
  final ReturnRequestEntity returnRequests;

  AllReturnRequestsLoaded({required this.returnRequests});

  @override
  List<Object> get props => [returnRequests];
}

final class AllReturnRequestsError extends AllReturnRequestsState {
  final String message;

  AllReturnRequestsError({required this.message});

  @override
  List<Object> get props => [message];
}
