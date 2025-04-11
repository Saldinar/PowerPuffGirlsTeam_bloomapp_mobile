// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../data/data_source/local/local_module.dart' as _i97;
import '../../data/data_source/local/theme_data_source.dart' as _i981;
import '../../data/data_source/local/user_local_data_source.dart' as _i259;
import '../../data/data_source/remote/auth/auth_data_source.dart' as _i969;
import '../../data/repository/auth_repository_impl.dart' as _i581;
import '../../data/repository/theme_repository_impl.dart' as _i6;
import '../../data/repository/user_local_repository_impl.dart' as _i788;
import '../../domain/repository/auth_repository.dart' as _i614;
import '../../domain/repository/theme_repository.dart' as _i490;
import '../../domain/repository/user_local_repository.dart' as _i121;
import '../../domain/use_case/auth/auth_use_case.dart' as _i759;
import '../../domain/use_case/theme/theme_use_case.dart' as _i301;
import '../../domain/use_case/user_local_use_case/user_local_use_case.dart'
    as _i691;
import '../dio/dio_module.dart' as _i977;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final localModule = _$LocalModule();
    final dioModule = _$DioModule();
    gh.singletonAsync<_i558.FlutterSecureStorage>(
        () => localModule.createSecureStorage());
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => localModule.createSharedPreferences(),
      preResolve: true,
    );
    gh.singleton<_i981.ThemeLocalDataSource>(
        () => _i981.ThemeLocalDataSourceImpl());
    gh.singleton<_i361.Dio>(
      () => dioModule.getUnauthorizedDioClient(),
      instanceName: 'Unauthorized',
    );
    gh.factoryAsync<_i259.UserLocalDataSource>(
        () async => _i259.UserLocalDataSource(
              await getAsync<_i558.FlutterSecureStorage>(),
              gh<_i460.SharedPreferences>(),
            ));
    gh.singleton<_i490.ThemeRepository>(() => _i6.ThemeRepositoryImpl(
        localDataSource: gh<_i981.ThemeLocalDataSource>()));
    gh.singletonAsync<_i121.UserLocalRepository>(() async =>
        _i788.UserLocalRepositoryImpl(
            await getAsync<_i259.UserLocalDataSource>()));
    gh.singletonAsync<_i691.UserLocalUseCase>(() async =>
        _i691.UserLocalUseCase(await getAsync<_i121.UserLocalRepository>()));
    gh.singletonAsync<_i361.Dio>(() async => dioModule
        .getAuthorizedDioClient(await getAsync<_i121.UserLocalRepository>()));
    gh.singleton<_i301.ThemeUseCase>(
        () => _i301.ThemeUseCase(repository: gh<_i490.ThemeRepository>()));
    gh.singletonAsync<_i969.AuthDataSource>(
        () async => _i969.AuthDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i614.AuthRepository>(() async =>
        _i581.AuthRepositoryImpl(
            dataSource: await getAsync<_i969.AuthDataSource>()));
    gh.singletonAsync<_i759.AuthUseCase>(() async => _i759.AuthUseCase(
        authRepository: await getAsync<_i614.AuthRepository>()));
    return this;
  }
}

class _$LocalModule extends _i97.LocalModule {}

class _$DioModule extends _i977.DioModule {}
