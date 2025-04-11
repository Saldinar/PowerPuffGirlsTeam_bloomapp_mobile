// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/data_source/local/theme_data_source.dart';
import 'package:amamini_client/features/domain/repository/theme_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ThemeRepository)
class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeLocalDataSource _localDataSource;
  ThemeRepositoryImpl({required ThemeLocalDataSource localDataSource})
      : _localDataSource = localDataSource;

  @override
  Future<bool> getTheme() async {
    return await _localDataSource.getTheme();
  }

  @override
  Future<void> setTheme(bool isDark) async {
    await _localDataSource.setTheme(isDark);
  }
}
