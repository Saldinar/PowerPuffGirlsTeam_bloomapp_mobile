import 'package:equatable/equatable.dart';

enum RequestStatus {
  initial,
  inProgress,
  success,
  failure,
}

class BlocRequestState<T> extends Equatable {
  const BlocRequestState({
    this.status = RequestStatus.initial,
    this.data,
    this.error,
    this.hasMoreAccounts = false,
    this.isBackgroundProcess = false,
  });

  final RequestStatus status;
  final T? data;
  final String? error;
  final bool hasMoreAccounts;
  final bool isBackgroundProcess;

  BlocRequestState<T> copyWith({
    RequestStatus? status,
    T? data,
    String? error,
    bool? hasMoreAccounts = false,
    bool? isBackgroundProcess = false,
  }) {
    return BlocRequestState<T>(
      status: status ?? this.status,
      data: data ?? this.data,
      error: error,
      hasMoreAccounts: hasMoreAccounts ?? this.hasMoreAccounts,
      isBackgroundProcess: isBackgroundProcess ?? this.isBackgroundProcess,
    );
  }

  @override
  List<Object?> get props => [
        status,
        data,
        error,
        hasMoreAccounts,
        isBackgroundProcess,
      ];
}
