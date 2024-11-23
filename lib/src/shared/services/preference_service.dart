import 'package:hive/hive.dart';

class PreferencesService {
  static const String _preferencesBoxName = 'preferencesBox';
  static final _preferencesBox = Hive.box(_preferencesBoxName);

  static const _localeKey = 'locale';
  static const _themeKey = 'theme';

  // Save locale
  static Future<void> saveLocale(String locale) async {
    await _preferencesBox.put(_localeKey, locale);
  }

  // Get locale
  static String? getLocale() {
    return _preferencesBox.get(_localeKey);
  }

  // Save theme choice
  static Future<void> saveTheme(bool isDarkMode) async {
    await _preferencesBox.put(_themeKey, isDarkMode);
  }

  // Get theme choice
  static bool getTheme() {
    return _preferencesBox.get(_themeKey, defaultValue: false);
  }
}
