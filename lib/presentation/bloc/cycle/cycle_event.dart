part of 'cycle_bloc.dart';

sealed class CycleEvent {}

final class FetchCycleDetails extends CycleEvent {
  FetchCycleDetails({required this.request});

  final UserRequestEntity request;
}
