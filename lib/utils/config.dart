import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class Config {
  SharedPreferencesWithCache? _preferences;
  static final Config _instance = Config._constructor();

  Config._constructor();

  Future<void> createPreferences() async {
    _preferences ??= await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
        allowList: <String>{'base_url'},
      ),
    );
  }

  SharedPreferencesWithCache? getPreferences() {
    return _preferences;
  }

  factory Config() {
    return _instance;
  }
}
