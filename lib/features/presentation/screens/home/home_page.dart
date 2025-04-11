import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/home_screen/home_screen_bloc.dart';
import 'package:amamini_client/features/presentation/screens/home/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenBloc(inject(), inject()),
      child: const HomePageView(),
    );
  }
}
