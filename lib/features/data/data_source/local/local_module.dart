import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class LocalModule {
  @singleton
  @factoryMethod
  Future<FlutterSecureStorage> createSecureStorage() async {
    return const FlutterSecureStorage();
  }

  @singleton
  @preResolve
  Future<SharedPreferences> createSharedPreferences() async {
    return SharedPreferences.getInstance();
  }
}
