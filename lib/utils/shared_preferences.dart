import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  static SharedPreferencesUtil? _instance;
  late SharedPreferences _prefs;

  // Private constructor to prevent multiple instances
  SharedPreferencesUtil._();

  // Singleton pattern to ensure only one instance is created
  static Future<SharedPreferencesUtil> getInstance() async {
    if (_instance == null) {
      _instance = SharedPreferencesUtil._();
      await _instance!._init();
    }
    return _instance!;
  }

  Future<void> _init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Methods for saving and retrieving values

  // Save String
  Future<void> saveString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  // Retrieve String
  String? getString(String key) {
    return _prefs.getString(key);
  }

  // Save bool
  Future<void> saveBool(String key, bool value) async {
    await _prefs.setBool(key, value);
  }

  // Retrieve bool
  bool? getBool(String key) {
    return _prefs.getBool(key);
  }

  // Save int
  Future<void> saveInt(String key, int value) async {
    await _prefs.setInt(key, value);
  }

  // Retrieve int
  int? getInt(String key) {
    return _prefs.getInt(key);
  }

  // Save double
  Future<void> saveDouble(String key, double value) async {
    await _prefs.setDouble(key, value);
  }

  // Retrieve double
  double? getDouble(String key) {
    return _prefs.getDouble(key);
  }

  // Save List<String>
  Future<void> saveStringList(String key, List<String> value) async {
    await _prefs.setStringList(key, value);
  }

  // Retrieve List<String>
  List<String>? getStringList(String key) {
    return _prefs.getStringList(key);
  }

  // Clear a specific key
  Future<void> clear(String key) async {
    await _prefs.remove(key);
  }

  // Clear all preferences
  Future<void> clearAll() async {
    await _prefs.clear();
  }
}