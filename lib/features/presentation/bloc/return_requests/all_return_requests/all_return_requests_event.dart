part of 'all_return_requests_bloc.dart';

sealed class AllReturnRequestsEvent extends Equatable {
  const AllReturnRequestsEvent();
}

final class GetAllReturnRequestsEvent extends AllReturnRequestsEvent {
  @override
  List<Object?> get props => [];
}
