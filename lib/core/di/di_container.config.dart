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

import '../../features/data/data_source/local/local_module.dart' as _i831;
import '../../features/data/data_source/local/theme_data_source.dart' as _i981;
import '../../features/data/data_source/local/user_local_data_source.dart'
    as _i964;
import '../../features/data/data_source/remote/address/address_data_source.dart'
    as _i84;
import '../../features/data/data_source/remote/auth/auth_data_source.dart'
    as _i633;
import '../../features/data/data_source/remote/cart/shopping_cart_data_source.dart'
    as _i711;
import '../../features/data/data_source/remote/category/category_data_source.dart'
    as _i379;
import '../../features/data/data_source/remote/customer/customer_data_source.dart'
    as _i619;
import '../../features/data/data_source/remote/manufacturer/manufacturer_data_source.dart'
    as _i390;
import '../../features/data/data_source/remote/orders/orders_data_source.dart'
    as _i229;
import '../../features/data/data_source/remote/password/password_data_source.dart'
    as _i59;
import '../../features/data/data_source/remote/product_reviews/product_reviews_data_source.dart'
    as _i627;
import '../../features/data/data_source/remote/products/product_data_source.dart'
    as _i306;
import '../../features/data/data_source/remote/return_requests/return_requests_data_source.dart'
    as _i705;
import '../../features/data/data_source/remote/reward_points/reward_points_data_source.dart'
    as _i826;
import '../../features/data/data_source/remote/wishlist/wishlist_data_source.dart'
    as _i210;
import '../../features/data/repository/address_repository_impl.dart' as _i444;
import '../../features/data/repository/auth_repository_impl.dart' as _i163;
import '../../features/data/repository/category_repository_impl.dart' as _i846;
import '../../features/data/repository/customer_repository_impl.dart' as _i620;
import '../../features/data/repository/manufacturer_repository_impl.dart'
    as _i126;
import '../../features/data/repository/orders_repository_impl.dart' as _i53;
import '../../features/data/repository/password_repository_impl.dart' as _i24;
import '../../features/data/repository/product_repository_impl.dart' as _i661;
import '../../features/data/repository/product_reviews_repository_impl.dart'
    as _i345;
import '../../features/data/repository/return_request_repository.dart' as _i29;
import '../../features/data/repository/reward_points_repository_impl.dart'
    as _i302;
import '../../features/data/repository/shopping_cart_repository_impl.dart'
    as _i82;
import '../../features/data/repository/theme_repository_impl.dart' as _i380;
import '../../features/data/repository/user_local_repository_impl.dart'
    as _i237;
import '../../features/data/repository/wishlist_repository_impl.dart' as _i610;
import '../../features/domain/repository/address_repository.dart' as _i756;
import '../../features/domain/repository/auth_repository.dart' as _i529;
import '../../features/domain/repository/category_repository.dart' as _i992;
import '../../features/domain/repository/customer_repository.dart' as _i813;
import '../../features/domain/repository/manufacturer_repository.dart' as _i864;
import '../../features/domain/repository/orders_repository.dart' as _i40;
import '../../features/domain/repository/password_repository.dart' as _i469;
import '../../features/domain/repository/product_reviews_repository.dart'
    as _i104;
import '../../features/domain/repository/products_repository.dart' as _i386;
import '../../features/domain/repository/return_request_repository.dart'
    as _i997;
import '../../features/domain/repository/reward_points_repository.dart'
    as _i526;
import '../../features/domain/repository/shopping_cart_repository.dart'
    as _i931;
import '../../features/domain/repository/theme_repository.dart' as _i844;
import '../../features/domain/repository/user_local_repository.dart' as _i206;
import '../../features/domain/repository/wishlist_repository.dart' as _i317;
import '../../features/domain/use_case/address/address_use_case.dart' as _i687;
import '../../features/domain/use_case/auth/auth_use_case.dart' as _i426;
import '../../features/domain/use_case/category/category_use_case.dart'
    as _i827;
import '../../features/domain/use_case/customer/customer_use_case.dart'
    as _i710;
import '../../features/domain/use_case/manufacturer/manufacturer_use_case.dart'
    as _i1032;
import '../../features/domain/use_case/orders/orders_use_case.dart' as _i128;
import '../../features/domain/use_case/password/password_use_case.dat.dart'
    as _i98;
import '../../features/domain/use_case/product_reviews/product_reviews_use_case.dart'
    as _i1009;
import '../../features/domain/use_case/products/products_use_case.dart'
    as _i626;
import '../../features/domain/use_case/return_requests/return_requests_use_case.dart'
    as _i787;
import '../../features/domain/use_case/reward_points/reward_points_use_case.dart'
    as _i626;
import '../../features/domain/use_case/shopping_cart/shopping_cart_use_case.dart'
    as _i638;
import '../../features/domain/use_case/theme/theme_use_case.dart' as _i780;
import '../../features/domain/use_case/user_local_use_case/user_local_use_case.dart'
    as _i917;
import '../../features/domain/use_case/wishlist/wishlist_use_case.dart'
    as _i623;
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
    gh.singleton<_i361.Dio>(
      () => dioModule.getUnauthorizedDioClient(),
      instanceName: 'Unauthorized',
    );
    gh.singleton<_i981.ThemeLocalDataSource>(
        () => _i981.ThemeLocalDataSourceImpl());
    gh.factoryAsync<_i964.UserLocalDataSource>(
        () async => _i964.UserLocalDataSource(
              await getAsync<_i558.FlutterSecureStorage>(),
              gh<_i460.SharedPreferences>(),
            ));
    gh.singletonAsync<_i206.UserLocalRepository>(() async =>
        _i237.UserLocalRepositoryImpl(
            await getAsync<_i964.UserLocalDataSource>()));
    gh.singletonAsync<_i917.UserLocalUseCase>(() async =>
        _i917.UserLocalUseCase(await getAsync<_i206.UserLocalRepository>()));
    gh.singleton<_i844.ThemeRepository>(() => _i380.ThemeRepositoryImpl(
        localDataSource: gh<_i981.ThemeLocalDataSource>()));
    gh.singletonAsync<_i361.Dio>(() async => dioModule
        .getAuthorizedDioClient(await getAsync<_i206.UserLocalRepository>()));
    gh.singleton<_i780.ThemeUseCase>(
        () => _i780.ThemeUseCase(repository: gh<_i844.ThemeRepository>()));
    gh.singletonAsync<_i390.ManufacturerDataSource>(
        () async => _i390.ManufacturerDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i59.PasswordDataSource>(
        () async => _i59.PasswordDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i306.ProductDataSource>(
        () async => _i306.ProductDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i379.CategoryDataSource>(
        () async => _i379.CategoryDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i711.ShoppingCartDataSource>(
        () async => _i711.ShoppingCartDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i633.AuthDataSource>(
        () async => _i633.AuthDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i619.CustomerDataSource>(
        () async => _i619.CustomerDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i84.AddressDataSource>(
        () async => _i84.AddressDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i229.OrdersDataSource>(
        () async => _i229.OrdersDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i705.ReturnRequestsDataSource>(() async =>
        _i705.ReturnRequestsDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i826.RewardPointsDataSource>(
        () async => _i826.RewardPointsDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i627.ProductReviewsDataSource>(() async =>
        _i627.ProductReviewsDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i210.WishlistDataSource>(
        () async => _i210.WishlistDataSource(await getAsync<_i361.Dio>()));
    gh.singletonAsync<_i104.ProductReviewsRepository>(() async =>
        _i345.ProductReviewsRepositoryImpl(
            await getAsync<_i627.ProductReviewsDataSource>()));
    gh.singletonAsync<_i529.AuthRepository>(() async =>
        _i163.AuthRepositoryImpl(
            dataSource: await getAsync<_i633.AuthDataSource>()));
    gh.singletonAsync<_i997.ReturnRequestRepository>(() async =>
        _i29.ReturnRequestRepositoryImpl(
            await getAsync<_i705.ReturnRequestsDataSource>()));
    gh.singletonAsync<_i787.ReturnRequestsUseCase>(() async =>
        _i787.ReturnRequestsUseCase(
            await getAsync<_i997.ReturnRequestRepository>()));
    gh.singletonAsync<_i317.WishlistRepository>(() async =>
        _i610.WishlistRepositoryImpl(
            await getAsync<_i210.WishlistDataSource>()));
    gh.singletonAsync<_i864.ManufacturerRepository>(() async =>
        _i126.ManufacturerRepositoryImpl(
            manufacturerDataSource:
                await getAsync<_i390.ManufacturerDataSource>()));
    gh.singletonAsync<_i992.CategoryRepository>(() async =>
        _i846.CategoryRepositoryImpl(
            dataSource: await getAsync<_i379.CategoryDataSource>()));
    gh.singletonAsync<_i526.RewardPointsRepository>(() async =>
        _i302.RewardPointsRepositoryImpl(
            await getAsync<_i826.RewardPointsDataSource>()));
    gh.singletonAsync<_i40.OrdersRepository>(() async =>
        _i53.OrdersRepositoryImpl(
            dataSource: await getAsync<_i229.OrdersDataSource>()));
    gh.singletonAsync<_i469.PasswordRepository>(() async =>
        _i24.PasswordRepositoryImpl(
            dataSource: await getAsync<_i59.PasswordDataSource>()));
    gh.singletonAsync<_i1032.ManufacturerUseCase>(() async =>
        _i1032.ManufacturerUseCase(
            manufacturerRepository:
                await getAsync<_i864.ManufacturerRepository>()));
    gh.singletonAsync<_i931.ShoppingCartRepository>(() async =>
        _i82.ShoppingCartRepositoryImpl(
            dataSource: await getAsync<_i711.ShoppingCartDataSource>()));
    gh.singletonAsync<_i756.AddressRepository>(() async =>
        _i444.AddressRepositoryImpl(
            dataSource: await getAsync<_i84.AddressDataSource>()));
    gh.singletonAsync<_i626.RewardPointsUseCase>(() async =>
        _i626.RewardPointsUseCase(
            await getAsync<_i526.RewardPointsRepository>()));
    gh.singletonAsync<_i1009.ProductReviewsUseCase>(() async =>
        _i1009.ProductReviewsUseCase(
            await getAsync<_i104.ProductReviewsRepository>()));
    gh.singletonAsync<_i813.CustomerRepository>(() async =>
        _i620.CustomerRepositoryImpl(
            dataSource: await getAsync<_i619.CustomerDataSource>()));
    gh.singletonAsync<_i638.ShoppingCartUseCase>(() async =>
        _i638.ShoppingCartUseCase(
            shoppingCartRepository:
                await getAsync<_i931.ShoppingCartRepository>()));
    gh.singletonAsync<_i386.ProductsRepository>(() async =>
        _i661.ProductRepositoryImpl(
            dataSource: await getAsync<_i306.ProductDataSource>()));
    gh.singletonAsync<_i687.AddressUseCase>(() async => _i687.AddressUseCase(
        repository: await getAsync<_i756.AddressRepository>()));
    gh.singletonAsync<_i426.AuthUseCase>(() async => _i426.AuthUseCase(
        authRepository: await getAsync<_i529.AuthRepository>()));
    gh.singletonAsync<_i98.PasswordUseCase>(() async => _i98.PasswordUseCase(
        passwordRepository: await getAsync<_i469.PasswordRepository>()));
    gh.singletonAsync<_i623.WishlistUseCase>(() async =>
        _i623.WishlistUseCase(await getAsync<_i317.WishlistRepository>()));
    gh.singletonAsync<_i626.ProductsUseCase>(() async => _i626.ProductsUseCase(
        productsRepository: await getAsync<_i386.ProductsRepository>()));
    gh.singletonAsync<_i128.OrdersUseCase>(() async => _i128.OrdersUseCase(
        repository: await getAsync<_i40.OrdersRepository>()));
    gh.singletonAsync<_i827.CategoryUseCase>(() async => _i827.CategoryUseCase(
        categoryRepository: await getAsync<_i992.CategoryRepository>()));
    gh.singletonAsync<_i710.CustomerUseCase>(() async => _i710.CustomerUseCase(
        repository: await getAsync<_i813.CustomerRepository>()));
    return this;
  }
}

class _$LocalModule extends _i831.LocalModule {}

class _$DioModule extends _i977.DioModule {}
