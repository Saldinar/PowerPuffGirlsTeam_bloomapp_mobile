import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log(
      '🐞[BLOC] Error in ${bloc.runtimeType}',
      error: error,
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log('Event receive in ${bloc.runtimeType} event: $event');
    super.onEvent(bloc, event);
  }
}
