abstract interface class ThemeRepository {
  Future<bool> getTheme();
  Future<void> setTheme(bool isDark);
}
