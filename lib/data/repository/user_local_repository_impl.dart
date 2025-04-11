import 'package:bloom/data/data_source/local/user_local_data_source.dart';
import 'package:bloom/domain/repository/user_local_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: UserLocalRepository)
class UserLocalRepositoryImpl implements UserLocalRepository {
  const UserLocalRepositoryImpl(this._storage);

  final UserLocalDataSource _storage;

  @override
  Future<void> saveToken({required String authToken}) async {
    await _storage.saveToken(authToken);
  }

  @override
  Future<String?> getToken() async {
    return await _storage.getToken();
  }

  @override
  Future<String> getBearerToken() async {
    final authToken = await _storage.getToken();
    return 'Bearer $authToken';
  }

  @override
  Future<void> deleteToken() async {
    await _storage.deleteToken();
  }

  @override
  Future<void> deleteUserStatus() async {
    await _storage.deleteUserStatus();
  }

  @override
  Future<bool?> getUserStatus() async {
    final userStatus = await _storage.getUserStatus();
    return userStatus;
  }

  @override
  Future<void> saveUserStatus(bool isGuest) async {
    await _storage.saveUserStatus(isGuest);
  }
}
