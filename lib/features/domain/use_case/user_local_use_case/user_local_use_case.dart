import 'package:amamini_client/features/domain/repository/user_local_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserLocalUseCase {
  final UserLocalRepository _localRepository;

  UserLocalUseCase(this._localRepository);

  Future<String?> getToken() async {
    return await _localRepository.getToken();
  }

  Future<void> deleteToken() async {
    await _localRepository.deleteToken();
  }

  Future<void> saveToken(String? authToken) async {
    return await _localRepository.saveToken(authToken: authToken!);
  }

  Future<void> saveUserStatus(bool isGuest) async {
    await _localRepository.saveUserStatus(isGuest);
  }

  Future<bool?> getUserStatus() async {
    final isGuest = await _localRepository.getUserStatus();
    return isGuest;
  }

  Future<void> deleteUserStatus() async {
    await _localRepository.deleteUserStatus();
  }
}
