import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ThemeLocalDataSource {
  Future<bool> getTheme();

  Future<void> setTheme(bool isDark);
}

@Singleton(as: ThemeLocalDataSource)
class ThemeLocalDataSourceImpl implements ThemeLocalDataSource {
  static const String _themeKey = 'isDarkMode';

  @override
  Future<bool> getTheme() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getBool(_themeKey) ?? false;
  }

  @override
  Future<void> setTheme(bool isDark) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool(_themeKey, isDark);
  }
}
