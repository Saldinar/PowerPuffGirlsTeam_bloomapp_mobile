// ignore_for_file: sort_constructors_first

import 'package:bloom/domain/repository/theme_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class ThemeUseCase {
  final ThemeRepository _repository;

  ThemeUseCase({required ThemeRepository repository})
      : _repository = repository;

  Future<bool> getTheme() async {
    return await _repository.getTheme();
  }

  Future<void> setTheme(bool isDark) async {
    await _repository.setTheme(isDark);
  }
}
