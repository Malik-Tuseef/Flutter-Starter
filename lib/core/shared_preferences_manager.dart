import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  SharedPreferencesManager._();

  static final SharedPreferencesManager _instance =
      SharedPreferencesManager._();

  static SharedPreferencesManager get instance => _instance;

  late SharedPreferences _preferences;

  Future<void> initialize() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // app lan

  String? get language => _preferences.getString('token');

  set setlanguage(String value) {
    _preferences.setString('token', value);
  }
}
