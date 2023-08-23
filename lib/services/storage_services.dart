import 'package:shared_preferences/shared_preferences.dart';

class StorageServices {
  static Future<void> setValue(String key, String value) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(key, value);
    } catch (e) {
      throw Exception();
    }
  }

  static Future<String?> getValue(String key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(key);
    } catch (e) {
      throw Exception();
    }
  }

  static Future<void> removeValue(String key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(key);
    } catch (e) {
      throw Exception();
    }
  }
}
