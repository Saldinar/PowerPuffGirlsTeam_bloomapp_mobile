import 'package:amamini_client/config/navigation/app_route_base.dart';
import 'package:amamini_client/config/theme/theme.dart';
import 'package:amamini_client/core/di/inject.dart';
import 'package:amamini_client/features/presentation/bloc/auth/auth_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/cart/add_to_cart_from_catalog/add_to_cart_from_catalog_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/category/sub_categories/sub_categories_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/customer/customer_info/customer_info_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/product/category_products/category_products_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/product/search_products/search_products_bloc.dart';
import 'package:amamini_client/features/presentation/bloc/theme_cubit/theme_cubit.dart';
import 'package:amamini_client/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class AmaminiClientApp extends StatefulWidget {
  const AmaminiClientApp({super.key});

  @override
  State<AmaminiClientApp> createState() => _AmaminiClientAppState();
}

class _AmaminiClientAppState extends State<AmaminiClientApp> {
  final _themeData = AppTheme();

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(inject(), inject(), inject()),
        ),
        BlocProvider(create: (context) => ThemeCubit(inject())),
        BlocProvider(create: (context) => SubCategoriesBloc(inject())),
        BlocProvider(create: (context) => SearchProductsBloc(inject())),
        BlocProvider(create: (context) => AddToCartFromCatalogBloc(inject())),
        BlocProvider(create: (context) => CategoryProductsBloc(inject())),
        BlocProvider(create: (context) => CustomerInfoBloc(inject())),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            theme: state.isDark ? _themeData.darkTheme : _themeData.lightTheme,
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }
}
