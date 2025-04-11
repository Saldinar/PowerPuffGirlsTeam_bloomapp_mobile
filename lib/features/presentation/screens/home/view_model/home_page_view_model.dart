import 'package:amamini_client/features/presentation/bloc/home_screen/home_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageViewModel {
  void fetchHomeScreenData(BuildContext context) {
    context.read<HomeScreenBloc>().add(GetHomePageDataEvent());
  }
}
