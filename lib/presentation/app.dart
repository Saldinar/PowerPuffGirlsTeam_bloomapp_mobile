import 'package:bloom/config/navigation/app_route_base.dart';
import 'package:bloom/config/theme/theme.dart';
import 'package:bloom/core/di/inject.dart';
import 'package:bloom/domain/use_case/theme/generated/l10n.dart';
import 'package:bloom/presentation/bloc/cycle/cycle_bloc.dart';
import 'package:bloom/presentation/bloc/register/register_bloc.dart';
import 'package:bloom/presentation/bloc/theme_cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class BloomApp extends StatefulWidget {
  const BloomApp({super.key});

  @override
  State<BloomApp> createState() => _BloomAppState();
}

class _BloomAppState extends State<BloomApp> {
  final _themeData = AppTheme();

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return MultiBlocProvider(
      providers: [
        /// Add all Bloc Providers here
        BlocProvider(
          create: (context) => RegisterBloc(inject(), inject()),
        ),
        BlocProvider(create: (context) => ThemeCubit(inject())),
        BlocProvider(create: (context) => CycleBloc(inject())),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            theme: _themeData.lightTheme,
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }
}
