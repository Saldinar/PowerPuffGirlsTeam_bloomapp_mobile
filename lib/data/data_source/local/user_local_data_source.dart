import 'package:bloom/core/constants/storage_constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class UserLocalDataSource {
  final FlutterSecureStorage _secureStorage;
  final SharedPreferences _sharedPreferences;

  const UserLocalDataSource(this._secureStorage, this._sharedPreferences);

  Future<void> saveToken(String authToken) async {
    await _secureStorage.write(
      key: accessTokenKey,
      value: authToken,
    );
  }

  Future<String?> getToken() async {
    final authToken = await _secureStorage.read(key: accessTokenKey);
    if (authToken == null /*|| refreshToken == null*/) {
      return null;
    }
    return authToken;
  }

  Future<void> deleteToken() async {
    await _secureStorage.deleteAll();
  }

  Future<void> saveUserStatus(bool isGuest) async {
    await _sharedPreferences.setBool(userStatusKey, isGuest);
  }

  Future<bool?> getUserStatus() async {
    final userStatus = _sharedPreferences.getBool(userStatusKey);
    return userStatus;
  }

  Future<void> deleteUserStatus() async {
    await _sharedPreferences.remove(userStatusKey);
  }
}
