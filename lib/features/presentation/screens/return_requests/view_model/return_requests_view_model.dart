import 'package:amamini_client/features/presentation/bloc/return_requests/all_return_requests/all_return_requests_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReturnRequestsViewModel {
  void getReturnRequests(BuildContext context) {
    context.read<AllReturnRequestsBloc>().add(GetAllReturnRequestsEvent());
  }
}
