// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/domain/use_case/theme/theme_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final ThemeUseCase getThemeUseCase;

  ThemeCubit(this.getThemeUseCase) : super(const ThemeState(false)) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final isDark = await getThemeUseCase.getTheme();
    emit(ThemeState(isDark));
  }

  Future<void> setTheme(bool isDark) async {
    await getThemeUseCase.setTheme(isDark);
    emit(ThemeState(isDark));
  }
}
