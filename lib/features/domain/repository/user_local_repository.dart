abstract class UserLocalRepository {
  Future<void> saveToken({required String authToken});

  Future<String?> getToken();

  Future<String> getBearerToken();

  Future<void> deleteToken();

  Future<void> saveUserStatus(bool isGuest);

  Future<bool?> getUserStatus();

  Future<void> deleteUserStatus();
}
